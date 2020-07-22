class Tree
  attr_accessor :children , :node_name
  def initialize(children_hash)
    @node_name = children_hash.keys[0]
      @children = children_hash[@node_name].map {|k,v| Tree.new({k => v})}

    #also possible to be done this way
      #@children = children_hash[@node_name].map do |child|
      #child_hash = Hash[*child]
      #Tree.new(child_hash)
    end
  end

  def visit_all(&block)
    visit &block
    children.each{|child| child.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new({'ggrandparent' => {
                                'grandparent1'=>
                                    {'parent1'=>{'child1'=> {}},
                                     'parent2'=>{'child2' =>{},'child3'=>{}}
                                    },
                                'grandparent2' =>
                                    {'parent3'=>{'child4'=>{}},
                                     'parent4'=>{'child5'=>{},'child6'=>{}}
                                    }
                                }
                     })


ruby_tree.visit_all{|node| puts node.node_name}