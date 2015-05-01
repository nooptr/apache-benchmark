# output as png image
set terminal png

# save file to "benchmark.png"
set output "benchmark.png"

# graph title
# set title "ab -n 1000 -c 50 -g out.data http://192.168.0.198/"
set title "Benchmark for apache/2.2 in Centos6.6"

#nicer aspect ratio for image size
set size 1,0.7

# y-axis grid
set grid y

#x-axis label
set xlabel "request"

#y-axis label
set ylabel "response time (ms)"

#plot data from "out.data" using column 9 with smooth sbezier lines
plot "data.tsv" using 10 smooth sbezier with lines title "Benchmark 1", "data2.tsv" using 10 smooth sbezier with lines title "Benchmark 2:"
