class Logger
	def initialize
		@f = File.open 'log.txt', 'a'
	end

	@@x = nil

	def self.instance
		if @@x == nil
			@@x = Logger.new
		end

		return @@x 
	end

	def self.say_something
		puts "haha"
	end

	def log_something wat
		@f.puts wat
	end
end

Logger.say_something
Logger.instance.log_something 'bla bla'
Logger.instance.log_something 'bla bla 2'

logger = Logger.new
logger.log_something 'waaat!'
