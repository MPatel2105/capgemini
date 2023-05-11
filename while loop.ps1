# Create 10 folders
$i = 1
while ($i -lt 11){
    New-Item "C:\Users\MPATEL\powershell\wahid$i" -ItemType Directory
    $i++
}



# Create 10 files
$i = 1
while ($i -lt 11){
    New-item "C:\Users\MPATEL\powershell\file$i" -ItemType File
    $i++
}


#Create 10 folders inside the folders created in step 2



$i = 1
while ($i -lt 11){
    $j = 1
    while ($j -lt 11){
        $abc = 'powershell' + '\Wahid' + $i + '\folder' + $j
        New-Item -path $abc -ItemType Directory 
        $j = $j + 1
        }
    $i = $i + 1
}



#4.Create 10 files in the 10 folders created in step 3 

$i = 1
while ($i -lt 11){
    $j = 1
    while ($j -lt 11){
        $k = 1
            while ($k -lt 11){
                $abc = 'powershell' + '\Wahid' + $i + '\folder' + $j + '\file' + $k + '.txt'
        New-Item -path $abc -ItemType File
        $k = $k +1
        }
     $j = $j +1
    }
  $i = $i + 1
 } 



 # 5. Copy 10 files to each of 10 folders

 $i = 1
while ($i -lt 11){
    $j = 1
    while ($j -lt 11){
        $shift = 'powershell' + '\file' + $j 
        $to =  'powershell' +'\Wahid' + $i 
        Copy-Item -Path $shift -Destination $to
        $j = $j +1
        }
     $i = $i + 1
}






