require_relative './dance_module.rb'
require_relative './dancer.rb'
require_relative './class_methods_module.rb'

class Kid

    extend MetaDancing
    include Dance

    extend FancyDance::ClassMethods
    include FancyDance::InstanceMethods
 
    attr_accessor :name
   
    def initialize(name)
      @name = name
    end

end

angelina = Kid.new("Angelina")
mikhail_baryshnikov = Dancer.new("Mikhail")
 
puts "#{angelina.name} says: #{angelina.twirl}"
puts "#{mikhail_baryshnikov.name} says: #{mikhail_baryshnikov.take_a_bow}"