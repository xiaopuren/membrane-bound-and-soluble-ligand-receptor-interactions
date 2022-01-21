for i in {1..16..1}
#####for i in 13 14 15 16

do

     mkdir -p $i

       cd $i

        cp ../main.cpp .
        cp ../run.sh .
        sed -i -e 's/#$ -N a1/#$ -N TaR1-'$i'/' run.sh

        g++ main.cpp -o out.o
        qsub run.sh

cd ..
done

