module JrubyPoi

    def self.jars_root
      File.join("#{File.dirname(__FILE__)}", "jruby-poi", "jars")
    end

    def self.load_jars!
      require 'java'
      Dir["#{jars_root}/*.jar"].each {|jar| require jar  }
    end

  end
end

JrubyPoi.load_jars!