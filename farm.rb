require_relative 'field'
require 'pry'
class Farm
  attr_accessor :fields, :total_harvest

  def initialize
    @fields = []
    @total_harvest = 0
  end

  def add_field(field)
    @fields << field 
  end

  def harvest
    binding.pry
    @fields.each do |field|
      puts "Harvesting #{field.production} from #{field.size} hectare #{field.type} field"
      puts "****************************************"
      @total_harvest += field.production
    end
    puts "The Farm has colleted a total of #{total_harvest} food from all the fields"
    total_harvest
  end

  def status
    @fields.each do |field|
      puts "#{field.type} is #{field.size} hectares"
    end
    puts "The farm has #{@total_harvest}"
  end

  def relax

    corn_total_size = 0
    wheat_total_size = 0

    fields.each do |field|
      if field.type == "corn"
        corn_total_size += field.size
      else
        wheat_total_size += field.size
      end
    end
    puts "#{corn_total_size} hectares of tall green stalks rustling in the breeze fill your horizon. The sun hangs low, casting an orange glow on a sea of #{wheat_total_size} hectares of wheat."
  end
end
