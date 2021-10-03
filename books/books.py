'''
books.py
Code by Thomas Zeng and Cole Weinstein, 1 October 2021

For use in the "books" assignment at the beginning of Carleton's
CS 257 Software Design class, Fall 2021.

#comments and stuff ( this file)

'''
import argparse
from booksdatasource import BooksDataSource


def get_parsed_arguments():
  '''Get's parsed arguments from command line
  '''
  #Strings used for Command Line description
  arg_parse_description = "Find specific books or authors from books1.csv based on a search string or search years.\nAll searches are case insensitive. NOTE -ts and -ys flags ONLY work with the -t flag"
  title_help = "Searches for books with STRING in the title"
  author_help = "Searches for authors with search string in author's first and/or last name. An author's name is formatted as \"GIVEN_NAME SURNAME\" where GIVEN_NAME is the author's given name and SURNAME is the author's surname. Thus, \"python3 books.py -a 'y o'\" will list the author \"Tommy Orange\""
  year_help = "Searches for books published between START_YEAR and END_YEAR inclusive"
  title_sort_help = "Sorts books by title; is the default sort. ONLY works with -t command"
  year_sort_help = "Sorts book by publication year, tiebreak by title. ONLY works with -t command"
  
  #Creates an argument parser and all flags for the program. --author, --title, and --year are all mutually exclusive, as are --titlesort and --yearsort.
  parser = argparse.ArgumentParser(description=arg_parse_description)
    
  search_type_group = parser.add_mutually_exclusive_group(required=True)
  search_type_group.add_argument('-t', '--title', metavar='STRING', nargs=1, type=str, help=title_help)
  search_type_group.add_argument('-a', '--author', metavar='STRING', nargs=1, type=str, help=author_help)
  search_type_group.add_argument('-y', '--year', metavar='YEAR', nargs=2, type=str, help=year_help)

  sort_group = parser.add_mutually_exclusive_group()
  sort_group.add_argument('-ts', '--titlesort', action='store_true', help=title_sort_help)
  sort_group.add_argument('-ys', '--yearsort', action='store_true', help=year_sort_help)
  parsed_arguments = parser.parse_args()
  
  #Prevents -ts/-ys flags from being used with flags other than -t/--title
  if (parsed_arguments.author or parsed_arguments.year) and (parsed_arguments.titlesort or parsed_arguments.yearsort):
    parser.error('-ts/--titlesort and -ys/--yearsort can only be used with -t/--title')
  
  
  return parsed_arguments

def print_list_output(arguments, data):
  '''Prints out the desired output based on the data and arguments provided
  '''
  if arguments.title:
    if arguments.yearsort:
      for book in data.books(arguments.title[0], 'year'):
        print(book.title)
    else:
      for book in data.books(arguments.title[0], 'title'):
        print(book.title)
  elif arguments.author:
    for author in data.authors(arguments.author[0]):
      print(author.given_name + ' ' + author.surname)
  elif arguments.year:
    for book in data.books_between_years(arguments.year[0], arguments.year[1]):
        print(book.title)

def main():
  
  arguments = get_parsed_arguments()
  data = BooksDataSource('books1.csv')

  print_list_output(arguments, data)
  
  

if __name__ == '__main__':
    main()