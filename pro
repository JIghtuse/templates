#!/usr/bin/python3

import sys

FILE_TEMPLATES = {
    "c" : "tcc.c"
}

def create_file(fname, template_fname):
    """Creates file with filename @fname using templated file @template_fname"""
    with open(template_fname) as infp:
        data = infp.readlines()
    with open(fname, "w") as outfp:
        outfp.writelines(data)

def usage():
    print("Usage: {} file <filename>".format(sys.argv[0]))
    sys.exit()

def get_type(name):
    dot_position = name.rfind(".")
    if dot_position == -1:
        print("No dot in filename. Cannot determine needed filetype")
        sys.exit()

    return name[dot_position + 1:]

def main(template_type, name):
    if template_type == "file":
        extension = get_type(name)
        if extension not in FILE_TEMPLATES:
            print("No templates for file of type '{}'".format(extension))
            sys.exit()
        create_file(name, FILE_TEMPLATES[extension])
    else:
        print("Not supported template type")

if __name__ == "__main__":
    if len(sys.argv) < 3:
        usage()
    main(sys.argv[1], sys.argv[2])
