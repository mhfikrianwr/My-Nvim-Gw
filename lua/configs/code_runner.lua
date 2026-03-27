return {
  filetype = {
    python = "python3 -u $fileName",
    c = "cd $dir && gcc $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
    cpp = "cd $dir && g++ $$fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt && rm $fileNameWithoutExt",
  },
}
