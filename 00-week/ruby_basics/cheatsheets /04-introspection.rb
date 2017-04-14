# See the cheatsheet for more info (reflection-introspection.rb).


# The most important ones are (we'll talk more about
# what ancestors and superclasses are in a little bit).
"abc".class         # => String
String.ancestors    # => [String, Comparable, Object, Kernel, BasicObject]
String.methods      # => [:try_convert, :allocate, :new, :superclass, :freeze, :===, :==, :<=>, :<, :<=, :>, :>=, :to_s, :inspect, :included_modules, :include?, :name, :ancestors, :instance_methods, :public_instance_methods, :protected_instance_methods, :private_instance_methods, :constants, :const_get, :const_set, :const_defined?, :const_missing, :class_variables, :remove_class_variable, :class_variable_get, :class_variable_set, :class_variable_defined?, :public_constant, :private_constant, :singleton_class?, :include, :prepend, :module_exec, :class_exec, :module_eval, :class_eval, :method_defined?, :public_method_defined?, :private_method_defined?, :protected_method_defined?, :public_class_method, :private_class_method, :autoload, :autoload?, :instance_method, :public_instance_method, :nil?, :=~, :!~, :eql?, :hash, :class, :singleton_class, :clone, :dup, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :frozen?, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, :public_method, :singleton_method, :define_singleton_method, :object_id, :to_enum, :enum_for, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]
Fixnum.superclass   # => Integer


# puts calls to_s, it returns a string for end users
# p calls inspect, it returns a string for developers
# Strings for example, get quotes placed around them.
"abc".inspect       # => "\"abc\""
"abc".to_s          # => "abc"


require 'date'
Date.today.inspect  # => "#<Date: 2017-04-10 ((2457854j,0s,0n),+0s,2299161j)>"
Date.today.to_s     # => "2017-04-10"
