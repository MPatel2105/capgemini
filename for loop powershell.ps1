# For Loop

# 1. Create 10 files

for ($i = 0; $i -lt 10; $i++) {
    $fileName = "patel$i.txt"
    $filePath = "C:\Users\MPATEL\powershell\$fileName"
    New-Item $filePath -ItemType File
}


# 2. Create 10 folders
for ($i=0;$i -lt 10;$i++)
{
New-Item -path "Wahid$i" -ItemType Directory 
}


# 3. Create 10 folders inside the folders created in step 2
for ($i=0;$i -lt 10;$i++)
{
for ($j=0;$j -lt 10;$j++)
{
New-Item -path "Wahid$i\folder$j" -ItemType Directory 
}
}


# 4.Create 10 files in the 10 folders created in step 3 
for ($i=0;$i -lt 10;$i++)
{
for ($j=0;$j -lt 10;$j++)
{
for ($k=0;$k -lt 10;$k++)
{
New-Item -path "Wahid$i\folder$j\file$k.txt" -ItemType file 
}
}
}




# 5. Copy 10 files to each of 10 folders 

for ($i=0;$i -lt10;$i++){
for ($j=0;$j -lt10;$j++){
  $to = 'Wahid' + $i + '\' + 'patel' + $j + '.txt'
  Copy-item -Path $fro -Destination $to 

}
}






# 6. Copy 10 files to each of 10 folders

    Get-ChildItem -path $powershell -Filter *.txt -Recurse | Remove-Item

