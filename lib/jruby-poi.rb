require 'delegate'
module JrubyPoi

    def self.jars_root
      File.join("#{File.dirname(__FILE__)}", "jruby-poi", "jars")
    end

    def self.load_jars!
      require 'java'
      Dir["#{jars_root}/*.jar"].each {|jar| require jar  }
    end

end

JrubyPoi.load_jars!
java_import org.apache.poi.hwpf.HWPFDocument
java_import org.apache.poi.poifs.filesystem.POIFSFileSystem
java_import java.io.FileInputStream


module JrubyPoi
	class Document < ::Delegator
		def initialize(path)
			fis = Java::OrgApachePoiPoifsFilesystem::POIFSFileSystem.new(Java::JavaIo::FileInputStream.new(path))
			@doc = Java::OrgApachePoiHwpf::HWPFDocument.new(fs);
		end

		def __getobj__
			@doc
		end
		
		def __setobj__(obj)
			@doc = obj
		end
	end
end