module Schedule
  class Calendar
    @@defaults = Calendar.new
	def self.defaults
      @@defaults
    end
  end

  attr_accessor :default_calendar

  class Resource
    def initialize(args={})
      @id = args[:id]
      @name = args[:name]
      @calendar = Calendar::defaults
    end
    def duration(task)
    end
  end

  p Resource.new({:name=>'abc'})




class Task
  def initialize
    @dulation = 0
    @subtasks = []
    @previouses = []
    @nexts = []
    @resource = []
  end
end




end
