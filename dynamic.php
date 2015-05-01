<?php
print "Hello world!</br>";

$no = rand(1, 100);
$no2 = rand(1, 100);

for ($xx=1; $xx<$no; $xx++) {
    for ($yy=1; $yy<$no2; $yy++) {
        printf("%4d",$xx*$yy);
    }
    print "</br>";
}
?>
