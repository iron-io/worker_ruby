=begin
Titan API

The ultimate, language agnostic, container based job processing framework.

OpenAPI spec version: 0.0.5

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'date'

module IronTitan
  class NewJob
    # Docker image to use for job. Default is 'image'
    attr_accessor :name

    # Docker image to use for job.
    attr_accessor :image

    # Payload for the job.  This is what you pass into each job to make it do something.
    attr_accessor :payload

    # Number of seconds to wait before starting. Default 0.
    attr_accessor :delay

    # Maximum runtime in seconds. If job runs for longer, it will be killed. Default 60 seconds.
    attr_accessor :timeout

    # Priority of the job. 3 levels from 0-2. Default 0.
    attr_accessor :priority

    # Max number of retries. A retry will be attempted if a task fails. Default 3. TODO: naming: retries or max_retries?
    attr_accessor :retries

    # Time in seconds to wait before next attempt. Default 60.
    attr_accessor :retries_delay

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'name' => :'name',
        
        :'image' => :'image',
        
        :'payload' => :'payload',
        
        :'delay' => :'delay',
        
        :'timeout' => :'timeout',
        
        :'priority' => :'priority',
        
        :'retries' => :'retries',
        
        :'retries_delay' => :'retries_delay'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'image' => :'String',
        :'payload' => :'String',
        :'delay' => :'Integer',
        :'timeout' => :'Integer',
        :'priority' => :'Integer',
        :'retries' => :'Integer',
        :'retries_delay' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'name']
        self.name = attributes[:'name']
      end
      
      if attributes[:'image']
        self.image = attributes[:'image']
      end
      
      if attributes[:'payload']
        self.payload = attributes[:'payload']
      end
      
      if attributes[:'delay']
        self.delay = attributes[:'delay']
      end
      
      if attributes[:'timeout']
        self.timeout = attributes[:'timeout']
      end
      
      if attributes[:'priority']
        self.priority = attributes[:'priority']
      end
      
      if attributes[:'retries']
        self.retries = attributes[:'retries']
      end
      
      if attributes[:'retries_delay']
        self.retries_delay = attributes[:'retries_delay']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          image == o.image &&
          payload == o.payload &&
          delay == o.delay &&
          timeout == o.timeout &&
          priority == o.priority &&
          retries == o.retries &&
          retries_delay == o.retries_delay
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [name, image, payload, delay, timeout, priority, retries, retries_delay].hash
    end

    # build the object from hash
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          else
            #TODO show warning in debug mode
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        else
          # data not found in attributes(hash), not an issue as the data can be optional
        end
      end

      self
    end

    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        _model = IronTitan.const_get(type).new
        _model.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_body (backward compatibility))
    def to_body
      to_hash
    end

    # return the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
