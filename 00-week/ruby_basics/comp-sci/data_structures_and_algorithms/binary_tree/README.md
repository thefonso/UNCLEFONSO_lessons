#Binary Trees [1]

#Morning (Lecture)

###Learning Objectives:

* Explain what a Binary Tree is, why you would use one, and the operations associated with it
* Determine the time complexity to insert, access, and remove from a Binary Tree
* Implement a Binary Tree class
* Implement a Binary Search Tree class

###Agenda:

* What is a Binary Tree?
* Code along: Implementing a Binary Tree
* What is Binary Search Tree?
* LAB: Implementing a BST

#Afternoon (Code-along)

###Learning Objectives
* Explain what a hashing function is

###Agenda

- Hashes
	- What is a hashing function?
	- Indexes: How do they work?
		- Phone book is a good example
			- Easy to look up a number given a name (can do binary search in logarithmic time)
			- Hard to find a name giving a number (linear with a big n)

* Code-along / LAB: 20 Questions game

#Homework

#Resources
* [Dylan's Binary Tree](https://github.com/doshea/binary_tree_rb)

#Dylan's Notes

##Binary Search Trees
https://github.com/doshea/binary_tree_rb/blob/master/binary_tree.rb

Talk about the concept of Binary Trees and diagram a few on the board. As a code-along, implement a Binary Tree class in Ruby. Then, talk about the idea of a Binary Search Tree -- same structure but with rules about where nodes can be placed. Make a Binary Search Tree class that inherits from the BinaryTree class, then have students pseudo-code the .insert method of the BST class. In groups of 2-3, they switch into lab mode and complete the insert class. Make sure that they are drawing the structures they expect.

Next up is the .search method -- have the class come back together to talk about it, diagram it and pseudo-code it, then split into groups of 2-3 again to code it .


##20 Questions with Binary Trees
https://github.com/doshea/binary_tree_rb/blob/master/twenty_questions.rb
An advanced look at another potential implementation of binary trees, the game "20 Questions". In this game, the computer begins with a decision tree, the top nodes of which are questions and the bottom nodes of which are answers. The computer asks Y/N questions until it gets to the end of a branch, at which point it makes a guess. If it is correct, the game is over and a rematch challenge is issued. If it is incorrect, things get interesting -- the computer asks what the user was thinking of and what question they should have asked, and adds those two nodes to the tree -- learning on the fly. Students really enjoy making this basic "artificial intelligence", and they'll learn binary trees as a result.

In this lab, the instructor should begin by talking about binary trees and going over how the binary decision trees are different from binary search trees (nodes are not ordered in a comparable way). The instructor does a code-along/discussion to set up the BinaryTree class, the get_yes_no method and the is_answer method. Then the instructor prompts the students to help pseudo-code the play_game method. Students break up into group of three to build the play_game function (takes up to an hour), utilizing the pseudo-code.