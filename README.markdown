# Mongoid embedded helper #

The Mongoid EmbeddedHelper helps overcome the limitation that you can't perform direct queries on an embedded collection without accessing it from the root.
It simply introduces a generic function that performs the "local" query by accessing it from the nearest root ;)

## Update

In the latest release (0.3.0) the #assimilate method has been removed in order to work with Mongoid 2.0.0.rc1

## Installation ##  

<code>gem install mongoid_embedded_helper</code>

## Usage ##

Mongoid doesn't allow you to perform direct queries on an embedded collection. You have to access the embedded collection from the root in order to do this.
To overcome this limitation, use the EmbeddedHelper module to add a method <code>query_class</code> which will find the closest non-embedded node in the hierarchy and
then traverse down the path back to the object, so that you can perform the query on the embedded collection.

<pre>
require 'mongoid_embedded_helper'

class Item
  include Mongoid::Document      
  include Mongoid::EmbeddedHelper
  field :pos, :type => Integer  
  field :number, :type => Integer  
  
  field :assoc, :type => Symbol
  embedded_in :list, :inverse_of => :items   
end

item = @person.lists[0].items[0]
item.query_class.where(:number.gt => 1).to_a  
  
</pre>

## Adjust!

An as added bonus, an extra adjust! method has been added to Document, Criteria and Array. This enables multi-mutation of attributes!

*Here an example using a number*
<pre>
it "should times all positions (greater than 1) by 2" do
  result = @person.lists[0].items.where(:pos.gt => 1).adjust!(:pos => lambda {|e| e * 2})
  result.map(&:pos).should == [4, 6]
end
</pre>

Passing a number is a convenience shortcut for adding a number instead of having to use the Proc approach as shown below.

*Here an example using a lambda (or Proc):*
<pre>
it "should times all positions (greater than 1) by 2" do
  result = @person.lists[0].items.where(:pos.gt => 1).adjust!(:pos => lambda {|e| e * 2})
  result.map(&:pos).should == [4, 6]
end
</pre>

The Proc approach can in simple cases be declared using a shortcut Symbol/String approach 

*Here an example using a symbol :upcase to declare that the method #upcase should be used as the mutator:*
<pre>
  it "should upcase the name - using symbol arg" do      
    result = @person.adjust!(:name => :upcase)
    result.name.should == 'Kristian'.upcase
  end
</pre>

*And using a String 'upcase' instead of a symbol:*
<pre>
  it "should upcase the name - using symbol arg" do      
    result = @person.adjust!(:name => 'upcase')
    result.name.should == 'Kristian'.upcase
  end
</pre>


## Copyright ##

Copyright (c) <2010> <Kristian Mandrup>