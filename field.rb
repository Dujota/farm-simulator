class Field

  attr_accessor :type, :size, :productivity

  def initialize(type, size)
    @type = type.to_s
    @size = size.to_i

    if @type == "corn"
      @productivity = 20
    else
      @productivity = 30
    end
  end

  def production
    @size * @productivity
  end

end
