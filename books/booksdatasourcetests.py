'''
   booksdatasourcetest.py
   Code by Thomas Zeng and Cole Weinstein, 26 September 2021

   For use in the "books" assignment at the beginning of Carleton's
   CS 257 Software Design class, Fall 2021.
'''

import booksdatasource
import unittest
from booksdatasource import Author
from booksdatasource import Book

class BooksDataSourceTester(unittest.TestCase):
    def setUp(self):
      self.data_source = booksdatasource.BooksDataSource('testerbooks.csv')
      self.data_source2 = booksdatasource.BooksDataSource('books1.csv')

    def tearDown(self):
        pass

    def test_unique_author(self):
        authors = self.data_source.authors('BBB')
        self.assertTrue(len(authors) == 1)
        self.assertTrue(authors[0] == Author('ZZ', 'BBB'))

    def test_find_multiple_authors(self):
        authors = self.data_source.authors('A')
        self.assertTrue(len(authors) == 2)
        self.assertTrue(authors[0] == Author('ZZ', 'ABD'))
        self.assertTrue(authors[1] == Author('ZZ', 'BAA'))

    def test_find_case_insensitive_author(self):
        authors = self.data_source.authors('bbb')
        self.assertTrue(len(authors) == 1)
        self.assertTrue(authors[0] == Author('ZZ', 'BBB'))

    def test_surname_sorting(self):
        authors = self.data_source.authors('d') 
        self.assertTrue(len(authors) == 3)
        self.assertTrue(authors[0] == Author('XZ', 'Dj'))
        self.assertTrue(authors[1] == Author('YZ', 'Di'))
        self.assertTrue(authors[2] == Author('ZZ', 'ABD'))
    
    def test_surname_tie_sorting(self):
        authors = self.data_source.authors('B')
        self.assertTrue(len(authors) == 5)
        self.assertTrue(authors[0] == Author('ZZ', 'ABD'))
        self.assertTrue(authors[1] == Author('ZZ', 'B'))
        self.assertTrue(authors[2] == Author('ZZ', 'BAA'))
        self.assertTrue(authors[3] == Author('ZZ', 'BB'))
        self.assertTrue(authors[4] == Author('ZZ', 'BBB'))

    def test_empty_author(self):
        authors = self.data_source.authors()
        self.assertTrue(len(authors) == 7)
        self.assertTrue(authors[0] == Author('XZ', 'Dj'))
        self.assertTrue(authors[1] == Author('YZ', 'Di'))
        self.assertTrue(authors[2] == Author('ZZ', 'ABD'))
        self.assertTrue(authors[3] == Author('ZZ', 'B'))
        self.assertTrue(authors[4] == Author('ZZ', 'BAA'))
        self.assertTrue(authors[5] == Author('ZZ', 'BB'))
        self.assertTrue(authors[6] == Author('ZZ', 'BBB'))

    def test_book_with_multiple_authors(self):
        books = self.data_source2.books('Good Omens')
        self.assertTrue(len(books) == 1)
        authorList = []
        for book in books:
          for author in book.authors:
            authorList.append(author)
        self.assertTrue(authorList[0] == Author('Gaiman', 'Neil'))
        self.assertTrue(authorList[1] == Author('Pratchett', 'Terry'))

    def test_unique_books(self):
        title = self.data_source.books('BBB')
        self.assertTrue(len(title) == 1)
        self.assertTrue(title[0] == Book('BBB'))

    def test_find_multiple_books(self):
        books = self.data_source.books('A')
        self.assertTrue(len(books) == 2)
        self.assertTrue(books[0] == Book('ABD'))
        self.assertTrue(books[1] == Book('BAA'))

    def test_find_case_insensitive_books(self):
        books = self.data_source.books('bbb')
        self.assertTrue(len(books) == 1)
        self.assertTrue(books[0] == Book('BBB'))

    def test_title_sorting(self):
        books = self.data_source.books('A', 'title') 
        self.assertTrue(len(books) == 2)
        self.assertTrue(books[0] == Book('ABD'))
        self.assertTrue(books[1] == Book('BAA'))
    
    def test_publication_sorting(self):
        books = self.data_source.books('D', 'year')
        self.assertTrue(len(books) == 3)
        self.assertTrue(books[0] == Book('ABD'))
        self.assertTrue(books[1] == Book('Dj'))
        self.assertTrue(books[2] == Book('Di'))

    
    def test_publication_sorting_title_tiebreaker(self):
        books = self.data_source.books('A', 'year')
        self.assertTrue(len(books) == 2)
        self.assertTrue(books[0] == Book('ABD'))
        self.assertTrue(books[1] == Book('BAA'))
        
    def test_empty_book(self):
        books = self.data_source.books()
        self.assertTrue(len(books) == 7)
        self.assertTrue(books[0] == Book('ABD'))
        self.assertTrue(books[1] == Book('B'))
        self.assertTrue(books[2] == Book('BAA'))
        self.assertTrue(books[3] == Book('BB'))
        self.assertTrue(books[4] == Book('BBB'))
        self.assertTrue(books[5] == Book('Di'))
        self.assertTrue(books[6] == Book('Dj'))

    def test_between_years(self):
        books = self.data_source.books_between_years('1999', '2001')
        self.assertTrue(len(books) == 4)
        self.assertTrue(books[0] == Book('B'))
        self.assertTrue(books[1] == Book('ABD'))
        self.assertTrue(books[2] == Book('BAA'))
        self.assertTrue(books[3] == Book('Dj'))

    def test_same_years(self):
        books = self.data_source.books_between_years('2000','2000')
        self.assertTrue(len(books) == 2)
        self.assertTrue(books[0] == Book('ABD'))
        self.assertTrue(books[1] == Book('BAA'))

    def test_between_years_only_start(self):
        books = self.data_source.books_between_years('2001')
        self.assertTrue(len(books) == 2)
        self.assertTrue(books[0] == Book('Dj'))
        self.assertTrue(books[1] == Book('Di'))

    def test_between_years_only_end(self):
        books = self.data_source.books_between_years(None,'1998')
        self.assertTrue(len(books) == 2)
        self.assertTrue(books[0] == Book('BBB'))
        self.assertTrue(books[1] == Book('BB'))

    def test_between_years_start_year_greater(self):
        books = self.data_source.books_between_years('2001', '1999')
        self.assertTrue(len(books) == 0)


    def test_empty_years(self):
        books = self.data_source.books_between_years()
        self.assertTrue(len(books) == 7)
        self.assertTrue(books[0] == Book('BBB'))
        self.assertTrue(books[1] == Book('BB'))
        self.assertTrue(books[2] == Book('B'))
        self.assertTrue(books[3] == Book('ABD'))
        self.assertTrue(books[4] == Book('BAA'))
        self.assertTrue(books[5] == Book('Dj'))
        self.assertTrue(books[6] == Book('Di'))

  

if __name__ == '__main__':
    unittest.main()
