for i in {1..16..1}
do

       cd $i

                        awk  '{print $1,  $2}' bond.dat  >  r_l.dat
                        awk  '{print $1,  $3}' bond.dat  >  mono_cis.dat
                        awk  '{print $1,  $4}' bond.dat  >  complex_cis.dat
                        awk  '{print $1,  $6}' bond.dat  >  clusterSize.dat
                        awk  '{print $1,  $7}' bond.dat  >  max_size.dat
#                       awk -v cis="$i" '{if (($1 > 33500000) && ($1 < 33700000)) {sum+=$2;n+=1;}} END{print cis, sum/n}' r_l.dat >> ../temp

cd ..
done

paste  1/clusterSize.dat 2/clusterSize.dat 3/clusterSize.dat 4/clusterSize.dat 5/clusterSize.dat 6/clusterSize.dat 7/clusterSize.dat 8/clusterSize.dat 9/clusterSize.dat 10/clusterSize.dat 11/clusterSize.dat 12/clusterSize.dat 13/clusterSize.dat 14/clusterSize.dat 15/clusterSize.dat 16/clusterSize.dat | awk ' { print $1, ($2+ $4+ $6+ $8+ $10+ $12+ $14+ $16+ $18+ $20+ $22+ $24+ $26+ $28+ $30+ $32)/(NF/2)  } ' > ave_cluster.dat

paste  1/max_size.dat 2/max_size.dat 3/max_size.dat 4/max_size.dat 5/max_size.dat 6/max_size.dat 7/max_size.dat 8/max_size.dat 9/max_size.dat 10/max_size.dat 11/max_size.dat 12/max_size.dat 13/max_size.dat 14/max_size.dat 15/max_size.dat 16/max_size.dat | awk ' { print $1, ($2+ $4+ $6+ $8+ $10+ $12+ $14+ $16+ $18+ $20+ $22+ $24+ $26+ $28+ $30+ $32)/(NF/2)  } ' > ave_max_cluster.dat

paste  1/r_l.dat 2/r_l.dat 3/r_l.dat 4/r_l.dat 5/r_l.dat 6/r_l.dat 7/r_l.dat 8/r_l.dat 9/r_l.dat 10/r_l.dat 11/r_l.dat 12/r_l.dat 13/r_l.dat 14/r_l.dat 15/r_l.dat 16/r_l.dat  | awk ' { print $1, ($2+ $4+ $6+ $8+ $10+ $12+ $14+ $16+ $18+ $20+ $22+ $24+ $26+ $28+ $30+ $32)/(NF/2)  } ' > ave_r_l.dat

paste  1/complex_cis.dat 2/complex_cis.dat 3/complex_cis.dat 4/complex_cis.dat 5/complex_cis.dat 6/complex_cis.dat 7/complex_cis.dat 8/complex_cis.dat 9/complex_cis.dat 10/complex_cis.dat 11/complex_cis.dat 12/complex_cis.dat 13/complex_cis.dat 14/complex_cis.dat 15/complex_cis.dat 16/complex_cis.dat | awk ' { print $1, ($2+ $4+ $6+ $8+ $10+ $12+ $14+ $16+ $18+ $20+ $22+ $24+ $26+ $28+ $30+ $32)/(NF/2)  } ' > ave_complex_cis.dat

paste  1/mono_cis.dat 2/mono_cis.dat 3/mono_cis.dat 4/mono_cis.dat 5/mono_cis.dat 6/mono_cis.dat 7/mono_cis.dat 8/mono_cis.dat 9/mono_cis.dat 10/mono_cis.dat 11/mono_cis.dat 12/mono_cis.dat 13/mono_cis.dat 14/mono_cis.dat 15/mono_cis.dat 16/mono_cis.dat | awk ' { print $1, ($2+ $4+ $6+ $8+ $10+ $12+ $14+ $16+ $18+ $20+ $22+ $24+ $26+ $28+ $30+ $32)/(NF/2)  } ' > ave_mono_cis.dat

