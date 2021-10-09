#!/usr/bin/env python3
'''
    booksdatasource.py
    Interface by Jeff Ondich, 21 September 2021
    Code by Thomas Zeng, Cole Weinstein
    revised by Thomas Zeng and Cole Weinstein, 9 October 2021
    
    For use in the "books" assignment at the beginning of Carleton's
    CS 257 Software Design class, Fall 2021.
'''
from functools import cmp_to_key
import csv

class Author:
    def __init__(self, surname='', given_name='', birth_year=None, death_year=None):
        self.surname = surname
        self.given_name = given_name
        self.birth_year = birth_year
        self.death_year = death_year

    def __eq__(self, other):
        ''' For simplicity, we're going to assume that no two authors have the same name. '''
        return self.surname == other.surname and self.given_name == other.given_name


    def compare_authors(author1, author2):
        '''compares two authors by surname, tiebreak by given name.
        '''
        if author1.surname < author2.surname:
            return -1
        elif author1.surname > author2.surname:
            return 1 
        elif author1.given_name < author2.given_name:
            return -1
        elif author1.given_name > author2.given_name:
          return 1
        else:
            return 0

class Book:
    def __init__(self, title='', publication_year=None, authors=[]):
        ''' Note that the self.authors instance variable is a list of
            references to Author objects. '''
        self.title = title
        self.publication_year = publication_year
        self.authors = authors

    def __eq__(self, other):
        ''' We're going to make the excessively simplifying assumption that
            no two books have the same title, so "same title" is the same
            thing as "same book". '''
        return self.title == other.title

    def compare_books_by_title(book1, book2):
        '''Compares two books in alphabetical order.
        '''
        if book1.title < book2.title:
            return -1
        elif book1.title > book2.title:
            return 1
        else:
            return 0
    
    def compare_books_by_year(book1, book2):
        '''Compares two books by publishing year, tiebreak by title.
        '''
        if book1.publication_year < book2.publication_year:
            return -1
        elif book1.publication_year > book2.publication_year:
            return 1 
        elif book1.title < book2.title:
            return -1
        elif book1.title > book2.title:
          return 1
        else:
            return 0

class BooksDataSource:
    def __init__(self, books_csv_file_name):
        ''' The books CSV file format looks like this:

                title,publication_year,author_description

            For example:

                All Clear,2010,Connie Willis (1945-)
                "Right Ho, Jeeves",1934,Pelham Grenville Wodehouse (1881-1975)

            This __init__ method parses the specified CSV file and creates
            suitable instance variables for the BooksDataSource object containing
            a collection of Author objects and a collection of Book objects.
        '''
        #list of Book objects read in from books_csv_file_name.
        self.book_list = []
        

        file = open(books_csv_file_name)
        reader = csv.reader(file)
        for row in reader:
          
          title = row[0]
          publication_year = int(row[1])
          authors = []

          #parses all authors of a book into a list called author_info_list
          #each author's information is stored as a separate string element
          author_info_list = row[2].split(' and ')
          for author_info in author_info_list:

            #a list of info for one author  
            info_list = author_info.split(' ')

            surname = info_list[-2]
            given_name = info_list[0]

            #splits author's lifetime into [birth year, death year]
            author_birth_death_years = info_list[-1].split('-')

            birth_year = int(author_birth_death_years[0][1:])

            #store death_year if author is dead otherwise none
            if author_birth_death_years[1] != ')':
                death_year = int(author_birth_death_years[1][:-1])
            else:
                death_year = None

            authors.append(Author(surname, given_name, birth_year, death_year))
          
          book = Book(title, publication_year, authors)
          self.book_list.append(book)

        file.close()

    def authors(self, search_text=None):
        ''' Returns a list of all the Author objects in this data source whose names contain
            (case-insensitively) the search text. If no search_text is provided, then this method
            returns all of the Author objects. In either case, the returned list is sorted
            by surname, breaking ties using given name (e.g. Ann Brontë comes before Charlotte Brontë).

            Note: the search string 'y S' would return 'Mary Shelly', since the string overlaps between given name and surname.
        '''
        #stores Author objects that match search_text
        matched_authors = []

        #stores search_text in manipulatable string
        search_string = search_text
        
        #default setting, if no search_string provided
        if search_string is None:
          search_string = ''
        
        #dictionary to prevent duplicate Authors in matched_authors
        duplicate_author_dict = {}
        
        #iterates through author of every book, add author to matched_authors if matches search_string
        for book in self.book_list:
          for author in book.authors:

            #concatenate author's given name and surname
            full_name = author.given_name + ' ' + author.surname
            if search_string.lower() in full_name.lower():
              #checks that full_name is not already in matched_authors
              if full_name not in duplicate_author_dict:
                matched_authors.append(author)
                duplicate_author_dict[full_name] = True

        #sort matched_authors alphabetically by surname using the built-in sort method and comparator in the Author class.
        matched_authors.sort(key=cmp_to_key(Author.compare_authors))
        
        return matched_authors

    def books(self, search_text=None, sort_by='title'):
        ''' Returns a list of all the Book objects in this data source whose
            titles contain (case-insensitively) search_text. If search_text is None,
            then this method returns all of the books objects.

            The list of books is sorted in an order depending on the sort_by parameter:

                'year' -- sorts by publication_year, breaking ties with (case-insenstive) title
                'title' -- sorts by (case-insensitive) title
                default -- same as 'title' (that is, if sort_by is anything other than 'year' or 'title', just do the same thing you would do for 'title')
        '''
        #stores Book objects whose title matchest search_text
        matched_books = []

        #stores search_text in manipulatable string
        search_string = search_text

        #default setting, if no search_string provided
        if search_string is None:
          search_string = ''

        #iterates through every book, adds the book to matched_books if they title contains search_text.
        for book in self.book_list:
          if search_string.lower() in book.title.lower():
            matched_books.append(book)

        #sort matched_books chronologically by publishing year if specified.
        if sort_by=='year':
          matched_books.sort(key=cmp_to_key(Book.compare_books_by_year))
        #if 'year' is not specified,sort using default
        else:
          matched_books.sort(key=cmp_to_key(Book.compare_books_by_title))

        return matched_books

    def books_between_years(self, start_year=None, end_year=None):
        ''' Returns a list of all the Book objects in this      data source whose publication
            years are between start_year and end_year, inclusive. The list is sorted
            by publication year, breaking ties by title (e.g. Neverwhere 1996 should
            come before Thief of Time 1996).

            If start_year is None, then any book published before or during end_year
            should be included. If end_year is None, then any book published after or
            during start_year should be included. If both are None, then all books
            should be included.
        '''
        #stores the matching Book objects
        matched_books = []

        #if no years are specified
        if start_year is None and end_year is None:
          for book in self.book_list:
            matched_books.append(book)
        
        #if only an end year is given
        elif start_year is None:
          for book in self.book_list:
            if book.publication_year <= end_year:
              matched_books.append(book)
        
        #if only a start year is given
        elif end_year is None:
          for book in self.book_list:
            if book.publication_year >= start_year:
              matched_books.append(book)
        
        #otherwise, start and end year is both given
        else:
          for book in self.book_list:
            if book.publication_year >= start_year and book.publication_year <= end_year:
              matched_books.append(book)

        #sort matched_books chronologically by publishing year
        matched_books.sort(key=cmp_to_key(Book.compare_books_by_year))

        return matched_books

