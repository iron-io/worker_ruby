=begin
#IronWorker CE API

#The ultimate, language agnostic, container based task processing framework.

OpenAPI spec version: 0.5.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'date'

module IronWorker

  class NewTask
    # Name of Docker image to use. This is optional and can be used to override the image defined at the group level.
    attr_accessor :image

    # Payload for the task. This is what you pass into each task to make it do something.
    attr_accessor :payload

    # Number of seconds to wait before queueing the task for consumption for the first time. Must be a positive integer. Tasks with a delay start in state \"delayed\" and transition to \"running\" after delay seconds.
    attr_accessor :delay

    # Maximum runtime in seconds. If a consumer retrieves the task, but does not change it's status within timeout seconds, the task is considered failed, with reason timeout (Titan may allow a small grace period). The consumer should also kill the task after timeout seconds. If a consumer tries to change status after Titan has already timed out the task, the consumer will be ignored. 
    attr_accessor :timeout

    # Priority of the task. Higher has more priority. 3 levels from 0-2. Tasks at same priority are processed in FIFO order.
    attr_accessor :priority

    # \"Number of automatic retries this task is allowed.  A retry will be attempted if a task fails. Max 25. Automatic retries are performed by titan when a task reaches a failed state and has `max_retries` > 0. A retry is performed by queueing a new task with the same image id and payload. The new task's max_retries is one less than the original. The new task's `retry_of` field is set to the original Task ID. The old task's `retry_at` field is set to the new Task's ID.  Titan will delay the new task for retries_delay seconds before queueing it. Cancelled or successful tasks are never automatically retried.\" 
    attr_accessor :max_retries

    # Time in seconds to wait before retrying the task. Must be a non-negative integer.
    attr_accessor :retries_delay


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'image' => :'image',
        :'payload' => :'payload',
        :'delay' => :'delay',
        :'timeout' => :'timeout',
        :'priority' => :'priority',
        :'max_retries' => :'max_retries',
        :'retries_delay' => :'retries_delay'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'image' => :'String',
        :'payload' => :'String',
        :'delay' => :'Integer',
        :'timeout' => :'Integer',
        :'priority' => :'Integer',
        :'max_retries' => :'Integer',
        :'retries_delay' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'image')
        self.image = attributes[:'image']
      end

      if attributes.has_key?(:'payload')
        self.payload = attributes[:'payload']
      end

      if attributes.has_key?(:'delay')
        self.delay = attributes[:'delay']
      else
        self.delay = 0
      end

      if attributes.has_key?(:'timeout')
        self.timeout = attributes[:'timeout']
      else
        self.timeout = 60
      end

      if attributes.has_key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.has_key?(:'max_retries')
        self.max_retries = attributes[:'max_retries']
      else
        self.max_retries = 0
      end

      if attributes.has_key?(:'retries_delay')
        self.retries_delay = attributes[:'retries_delay']
      else
        self.retries_delay = 60
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @image.nil?
      return false if @priority.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          image == o.image &&
          payload == o.payload &&
          delay == o.delay &&
          timeout == o.timeout &&
          priority == o.priority &&
          max_retries == o.max_retries &&
          retries_delay == o.retries_delay
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [image, payload, delay, timeout, priority, max_retries, retries_delay].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
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
      when :Object
        # generic object (usually a Hash), return directly
        value
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
        temp_model = IronWorker.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
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
