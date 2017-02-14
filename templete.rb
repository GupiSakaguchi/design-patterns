require 'rubygems'
require 'sqlite3'

class DBManager
  attr_reader :db
  def create_database
    @db = SQLite3::Database.new('test.db')
  end

  def create_table
    if not user?
      return
    end

    sql = <<-SQL
      create table users (
      id integer primary key,
      name text
    );
    SQL
    @db.execute(sql)
  end

  def user?
    sql = <<-SQL
      select count(*) from users 
    );
    SQL
    if @db.execute(sql).count > 0
      return True
    end
  end

  def insert
    @db.execute('insert into users (name) values(?)','taro')
  end

  def select_all
    @db.execute('select * from users') do |row|
      p row
    end

  end

end

class CsvImporter

  def import

  end

  def export_to_db

  end

end

Users = Struct.new(:id,:name,:age)
Goods = Struct.new(:id,:name,:price)
# taro = Users2[1,:taro,5]
# p taro.id
# p taro.name

# dbmanager = DBManager.new
# dbmanager.create_database
# #dbmanager.create_table
# dbmanager.insert
# dbmanager.select_all


