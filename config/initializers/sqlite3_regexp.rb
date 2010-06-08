# comes from http://titusd.co.uk/2010/01/31/regular-expressions-in-sqlite
require 'active_record/connection_adapters/sqlite3_adapter'

class ActiveRecord::ConnectionAdapters::SQLite3Adapter
  def initialize(db, logger, config)
    super db, logger, config
    db.create_function('regexp', 2) do |func, pattern, expression|
       regexp = Regexp.new(pattern.to_s)
       if expression.to_s.match(regexp)
         func.result = 1
       else
         func.result = 0
       end
     end
  end
end
