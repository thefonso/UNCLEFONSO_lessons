#Sorting & Search [1]

#Morning (Lecture)

###Learning Objectives:

Sorting Algorithms for an Array

* Explain how each of the following algorithms work and determine their time complexity:
	* Bubble Sort
	* Select Sort
	* Merge Sort
	* Quick Sort

Seaching an Array

* Implement a linear search algorithm
* Implement a non-recursive binary search algorithm
* Implement a recursive binary search algorithm
	* Secret number game
	* Phone book

###Agenda:

* Sort a deck of cards using the various algorithms.
* Implement a selection sort in Ruby
* Implement a merge sort in Ruby

#Afternoon (Code-along)

###Agenda:

* Implement a quick sort in Ruby
* Do the first few [Project Euler problems](https://github.com/omardelarosa/ruby_euler_lab)

#Homework
* jQuery Selection Sort

#Resources
* [Dylan's jQuery Selection Sort](https://github.com/doshea/jquery_selection_sort)
* [Bubble Sort Dance](http://www.youtube.com/watch?v=lyZQPjUT5B4)
* [Big-O Cheat Sheet](http://bigocheatsheet.com/) 
* [Sorting algorithms](http://www.sorting-algorithms.com/)

# Dylan's Notes
Intro to Sorting

https://github.com/doshea/selection_sort_rb

This lab should take a full afternoon/morning and is intended to introduce students to different sorting algorithms and methodology, as well as Big O notation for comparing sorting methods. At this point, students should really be thinking about how their programs scale with large amounts of data -- code extensibility is one of the key points to emphasize.

Start out by having students talk about how they would organize a randomized deck of cards. Then ask the same question with the caveat that they were only allowed to look at two cards at a time! This is how computers sort things -- one comparison at a time. They will likely go through a few different "algorithms" before stopping at something like selection sort -- find the smallest or highest card and put it first, then the next one, etc. They are actually cheating by doing this -- they know which cards form a deck, but the computer could be given any assortment of things in an array. Ask them how they'd do the sorting if the cards weren't cards but any assortment of numbers from 1 to a million. Now they should arrive at selection sort. At this point, diagram how selection sort works, and talk about when it is good (best-case), when it is bad (average case) and when it is awful (worst case). Notice that they will all take somewhere on the order of N-squared operations. This is the introduction to big-O notation.

Talk about how Selection Sort works, but is inefficient because it can't "skip ahead" if it gets lucky and the data is already sorted or close-to-sorted. When comparing different algorithms, always show them visually on the board -- students need the visual. Next compare SelectionSort to Bubble sort, which takes O(n) time when it is run on sorted data. Compare the best, average and worst cases of both. Bubble sort is better. Now show the table of all the sorting algorithms (Wikipedia is good) and talk about which ones are good in which cases and which are good in all cases (Timsort and other weirdos).


Help the students to pseudo-code SelectionSort in Ruby and give them a random integer array-generator to practice it on. Students should break into groups of 2-3 to do this lab, making selection sort work. Once they have SelectionSort working in Ruby, they are to implement it in Javascript, using the code from the following repo:

https://github.com/doshea/jquery_selection_sort

In groups of 2-3, they should build a Javascript SelectionSort function that runs when the "Sort!" button is pressed, sorting the jumbled HipsterIpsum words alphabetically. This should take quite some time and end when class ends. Extra credit is to make the function pause as it moves through the loop and highlight the elements it is comparing, making the sorting a visually pretty process.
