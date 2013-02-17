JAR files for Apache POI
==================================================

This gem provides a set of jar files of the for using Apache POI. Because putting things in vendor/lib sucks. 

To use it: `require 'jruby-poi'`

I have pretty much copied the packaging pattern used by neo4j-enterprise - https://github.com/dnagir/neo4j-enterprise

Delegator
==================================================
A simple roll and go delegator is set up for the main Word document class,
documented here: 

http://poi.apache.org/apidocs/org/apache/poi/hwpf/HWPFDocument.html

Usage:
```ruby
	require 'jruby-poi'
	=> true
	doc=JrubyPoi::Document.new("/Users/jcalvert/Downloads/Flavor96-2.doc")
	=> #<Java::OrgApachePoiHwpf::HWPFDocument:0x35ba7dab>
	doc.get_text.to_s
	=> "\b\u0013 SHAPE  \\* MERGEFORMAT \u0014\b\u0001\u0015\r\rHello"
	 doc.methods.sort
	=> [:!, :!=, :!~, :<=>, :==, :===, :=~, :__getobj__, :__id__, :__is_a__, :"__jcreate!", :"__jsend!", :__metaclass__, :__send__, :__setobj__, :`, :acts_like?, :as_json, :blank?, :bookmarks, :breakpoint, :capture, :characterLength, :characterTable, :character_length, :character_table, :class, :class_eval, :clone, :com, :commentsRange, :comments_range, :copyNodeRecursively, :copyNodes, :copy_node_recursively, :copy_nodes, :createInformationProperties, :create_information_properties, :dataStream, :data_stream, :debugger, :define_singleton_method, :delete, :display, :docProperties, :doc_properties, :documentSummaryInformation, :documentText, :document_summary_information, :document_text, :dup, :duplicable?, :enable_warnings, :endnoteRange, :endnote_range, :endnotes, :enum_for, :eql?, :equal?, :equals, :equals?, :escherRecordHolder, :escher_record_holder, :eval_js, :expects, :extend, :fields, :fieldsTables, :fields_tables, :fileInformationBlock, :file_information_block, :finalize, :fontTable, :font_table, :footnoteRange, :footnote_range, :footnotes, :freeze, :frozen?, :gem, :getBookmarks, :getCharacterTable, :getClass, :getCommentsRange, :getDataStream, :getDocProperties, :getDocumentSummaryInformation, :getDocumentText, :getEndnoteRange, :getEndnotes, :getEscherRecordHolder, :getFields, :getFieldsTables, :getFileInformationBlock, :getFontTable, :getFootnoteRange, :getFootnotes, :getHeaderStoryRange, :getListTables, :getMainTextboxRange, :getObjectsPool, :getOfficeDrawingsHeaders, :getOfficeDrawingsMain, :getOverallRange, :getParagraphTable, :getPicturesTable, :getPropertySet, :getRange, :getRevisionMarkAuthorTable, :getSavedByTable, :getSectionTable, :getShapesTable, :getStyleSheet, :getSummaryInformation, :getTableStream, :getText, :getTextTable, :get_bookmarks, :get_character_table, :get_class, :get_comments_range, :get_data_stream, :get_doc_properties, :get_document_summary_information, :get_document_text, :get_endnote_range, :get_endnotes, :get_escher_record_holder, :get_fields, :get_fields_tables, :get_file_information_block, :get_font_table, :get_footnote_range, :get_footnotes, :get_header_story_range, :get_list_tables, :get_main_textbox_range, :get_objects_pool, :get_office_drawings_headers, :get_office_drawings_main, :get_overall_range, :get_paragraph_table, :get_pictures_table, :get_property_set, :get_range, :get_revision_mark_author_table, :get_saved_by_table, :get_section_table, :get_shapes_table, :get_style_sheet, :get_summary_information, :get_table_stream, :get_text, :get_text_table, :handle_different_imports, :hash, :hashCode, :hash_code, :headerStoryRange, :header_story_range, :html_safe?, :in?, :include_class, :initialize, :initialize_clone, :initialize_dup, :inspect, :instance_eval, :instance_exec, :instance_of?, :instance_values, :instance_variable_defined?, :instance_variable_get, :instance_variable_names, :instance_variable_set, :instance_variables, :is_a?, :java, :java_annotation, :java_class, :java_implements, :java_kind_of?, :java_method, :java_name, :java_object, :java_object=, :java_package, :java_require, :java_send, :java_signature, :javax, :kind_of?, :listTables, :list_tables, :load, :load_dependency, :mainTextboxRange, :main_textbox_range, :marshal_dump, :marshal_load, :method, :method_exists?, :method_missing, :methods, :mocha, :mocha_inspect, :nil?, :notify, :notifyAll, :notify_all, :object_id, :objectsPool, :objects_pool, :officeDrawingsHeaders, :officeDrawingsMain, :office_drawings_headers, :office_drawings_main, :org, :overallRange, :overall_range, :paragraphTable, :paragraph_table, :picturesTable, :pictures_table, :presence, :present?, :pretty_inspect, :pretty_print, :pretty_print_cycle, :pretty_print_inspect, :pretty_print_instance_variables, :private_methods, :protected_methods, :psych_to_yaml, :public_method, :public_methods, :public_send, :quietly, :range, :readProperties, :read_properties, :registerList, :register_list, :require, :require_association, :require_dependency, :require_or_load, :reset_mocha, :respond_to?, :respond_to_missing?, :revisionMarkAuthorTable, :revision_mark_author_table, :savedByTable, :saved_by_table, :sectionTable, :section_table, :send, :shapesTable, :shapes_table, :silence, :silence_stderr, :silence_stream, :silence_warnings, :singleton_class, :singleton_methods, :stubba_method, :stubba_object, :stubs, :styleSheet, :style_sheet, :summaryInformation, :summary_information, :suppress, :suppress_warnings, :synchronized, :tableStream, :table_stream, :taint, :tainted?, :tap, :text, :textTable, :text_table, :toString, :to_enum, :to_java, :to_java_object, :to_json, :to_matcher, :to_param, :to_query, :to_s, :to_string, :to_yaml, :to_yaml_properties, :trust, :try, :unloadable, :unstub, :untaint, :untrust, :untrusted?, :wait, :with_options, :with_warnings, :write, :writeProperties, :writePropertySet, :write_properties, :write_property_set]
```

I highly suggest installing something like Pry to explore the the esoteric Java objects. I will try to add appropriate convenience methods to simplify as I go. 

License
==================================================

This gem is MIT licensed.

However the jars included are licensed by [Apache](http://poi.apache.org).
