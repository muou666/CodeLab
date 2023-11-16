#!/bin/bash
#auther:muou
#date:2023-11-15

#定义一个死循环
for ((a=1;a>=0;a++))
do
#选项
read -p "请输入你想打印图形的序号：
1)矩形
2)半边三角形
3)等腰三角形
4)圣诞树
5)退出
" choose

	#选择
	case $choose in
	#矩形
		1)
		read -p "请输入要打印矩形的行数：" hang

		read -p "请输入要打印矩形的列数：" lie

		for ((h=1;h<=$hang;h++))
		do
			for ((l=1;l<=$lie;l++))
			do
				echo -n "*"
			done
			echo ""
		done
		;;

	#半边三角形
		2)
		read -p "请输入要打印半边三角形的高度：" gao

		for ((h=1;h<=$gao;h++))
		do
			for((l=1;l<=h;l++))
			do
				echo -n "*"
			done
			echo ""
		done
		;;

	#等腰三角形
		3)
		read -p "请输入要打印等腰三角形的高度：" gao

		for ((i=1; i<=$gao; i++))
		do
		    for ((j=i; j<$gao; j++))
		    do
		        echo -n " "
		    done
		    for ((k=1; k<=(2*i-1); k++))
		    do
		        echo -n "*"
		    done
		    echo ""
		done
		;;

	#圣诞树
		4)
		sum=$[2*4-1]

		#树头
		for ((i=1; i<=4; i++))
		do
		    for ((j=i; j<4; j++))
		    do
		        echo -n " "
		    done
		    for ((k=1; k<=(2*i-1); k++))
		    do
		        echo -n "*"
		    done
		    echo ""
		done

		#树身
		for ((n=2; n<=4; n++))
		do
		    for ((b=n; b<4; b++))
		    do
		        echo -n " "
		    done
		    for ((c=1; c<=(2*n-1); c++))
		    do
		        echo -n "*"
		    done
		    echo ""
		done
		#树干

		for ((m=1;m<=3;m++))
		do
			for ((l=1; l<=5;l++))
			do
				if [[ $l -lt 3 ]];then
					echo -n " "
				else
					echo -n "*"
				fi
			done
			echo ""
		done
		;;

		5)
		exit 1
		;;

		*)
		echo "输入错误"
	esac

done
