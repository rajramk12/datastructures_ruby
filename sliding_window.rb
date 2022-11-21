 # require 'debug'

module  RateLimiter
  def isAllowed?(task)
    return "Sorry"
  end
end 

class SlidingWindow
  include RateLimiter 
  attr_accessor :size_limit, :time_limit, :last_used_time, :queue
  def initialize(size =   5, time =  1)
      # binding.irb
      @size_limit = size
      @time_limit = time * 1000
      @last_used_time  = Time.now().strftime("%Y%m%d%H%M%S%L")     
    @queue = []
  end

  def isAllowed?(task_id)
    current_time = Time.now().strftime("%Y%m%d%H%M%S%L")  
    check_queue(current_time)   
    if queue.size < size_limit  
      queue.insert(0, [current_time, task_id])
      # print_queue()
    else 
      # print_queue()
    end
  end

  def print_queue   
    p '*' * 60
    puts "Current_Queue", queue
  end

  def to_s
    print("Capacity: " + size_limit.to_s , "\n" +
" Time Window(in milliseconds): " + time_limit.to_s, "\n")
  end
  
  def check_queue(current_time)
    return if queue.empty?
    window_time = current_time.to_i - queue.last[0].to_i
    p window_time
    while window_time >= time_limit && queue.size < size_limit
       queue.delete(0) if !queue.empty?
       window_time = current_time.to_i - queue.last[0].to_i
    end
       
  end
end

time = 2
size = 10
try_with = 20
window = SlidingWindow.new(size, time)
window.to_s()
all_tasks = []
for i in (1..try_with)
  all_tasks << [i, Time.now().strftime("%Y%m%d%H%M%S%L")]
  sleep(0.2)
  # sleep(0.3) if i.even? and i != try_with
  window.isAllowed?(i) 
end

print '*' * 70 
print "\n Received \n"
puts all_tasks.size
print '*' * 70 
print "\n Allowed \n"
puts window.queue
