import glob

for file in glob.glob('./*.lua'):
    with open("./new/" + file, 'w') as outfile:
        with open(file) as infile:
            text = infile.readlines()
            text.insert(0, "---@meta\n")

            outfile.write(''.join(text))
