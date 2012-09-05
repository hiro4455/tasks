class Task
  def initialize(duration)
    @duration = duration
    @subtasks = []
    @previouses = []
    @nexts = []
    @resource = []
  end

  def durations
    subtask_duration = @subtasks.inject(0){ |res,subtask| res += subtask.durations }
    if @duration > subtask_duration
      return @duration
    end
    subtask_duration
  end

  def subtask(subtask)
    if subtask.kind_of?(Enumerable)
      @subtasks += subtask
    end
    self
  end
end

def task(duration)
  Task.new(duration)
end

puts task(5).subtask([task(1),task(2)]).durations
