=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentsPointOfSaleInformation
    # Identifier for the terminal at your retail location. You can define this value yourself, but consult the processor for requirements.  For Payouts: This field is applicable for CtV. 
    attr_accessor :terminal_id

    # Description of this field is not available.
    attr_accessor :terminal_serial_number

    # Identifier for an alternate terminal at your retail location. You define the value for this field.  This field is supported only for MasterCard transactions on FDC Nashville Global. Use the _terminalID_ field to identify the main terminal at your retail location. If your retail location has multiple terminals, use this _alternateTerminalID_ field to identify the terminal used for the transaction.  This field is a pass-through, which means that CyberSource does not check the value or modify the value in any way before sending it to the processor. 
    attr_accessor :lane_number

    # Indicates whether the card is present at the time of the transaction. Possible values:   - **true**: Card is present.  - **false**: Card is not present. 
    attr_accessor :card_present

    # Type of cardholder-activated terminal. Possible values:   - 1: Automated dispensing machine  - 2: Self-service terminal  - 3: Limited amount terminal  - 4: In-flight commerce (IFC) terminal  - 5: Radio frequency device  - 6: Mobile acceptance terminal  - 7: Electronic cash register  - 8: E-commerce device at your location  - 9: Terminal or cash register that uses a dialup connection to connect to the transaction processing network  * Applicable only for CTV for Payouts. 
    attr_accessor :cat_level

    # Method of entering credit card information into the POS terminal. Possible values:   - contact: Read from direct contact with chip card.  - contactless: Read from a contactless interface using chip data.  - keyed: Manually keyed into POS terminal.  - msd: Read from a contactless interface using magnetic stripe data (MSD).  - swiped: Read from credit card magnetic stripe.  The contact, contactless, and msd values are supported only for EMV transactions. * Applicable only for CTV for Payouts. 
    attr_accessor :entry_mode

    # POS terminal’s capability. Possible values:   - 1: Terminal has a magnetic stripe reader only.  - 2: Terminal has a magnetic stripe reader and manual entry capability.  - 3: Terminal has manual entry capability only.  - 4: Terminal can read chip cards.  - 5: Terminal can read contactless chip cards.  The values of 4 and 5 are supported only for EMV transactions. * Applicable only for CTV for Payouts.   
    attr_accessor :terminal_capability

    # A one-digit code that identifies the capability of terminal to capture PINs.  This code does not necessarily mean that a PIN was entered or is included in this message.  For Payouts: This field is applicable for CtV. 
    attr_accessor :pin_entry_capability

    # Operating environment. Possible values:   - 0: No terminal used or unknown environment.  - 1: On merchant premises, attended.  - 2: On merchant premises, unattended, or cardholder terminal. Examples: oil, kiosks, self-checkout, home       computer, mobile telephone, personal digital assistant (PDA). Cardholder terminal is supported only for       MasterCard transactions on **CyberSource through VisaNet**.  - 3: Off merchant premises, attended. Examples: portable POS devices at trade shows, at service calls, or in       taxis.  - 4: Off merchant premises, unattended, or cardholder terminal. Examples: vending machines, home computer,       mobile telephone, PDA. Cardholder terminal is supported only for MasterCard transactions on **CyberSource       through VisaNet**.  - 5: On premises of cardholder, unattended.  - 9: Unknown delivery mode.  - S: Electronic delivery of product. Examples: music, software, or eTickets that are downloaded over the       internet.  - T: Physical delivery of product. Examples: music or software that is delivered by mail or by a courier.  This field is supported only for **American Express Direct** and **CyberSource through VisaNet**.  **CyberSource through VisaNet**  For MasterCard transactions, the only valid values are 2 and 4. 
    attr_accessor :operating_environment

    attr_accessor :emv

    # Point-of-sale details for the transaction. This value is returned only for **American Express Direct**. CyberSource generates this value, which consists of a series of codes that identify terminal capability, security data, and specific conditions present at the time the transaction occurred. To comply with the CAPN requirements, this  value must be included in all subsequent follow-on requests, such as captures and follow-on credits.  When you perform authorizations, captures, and credits through CyberSource, CyberSource passes this value from the authorization service to the subsequent services for you. However, when you perform authorizations through CyberSource and perform subsequent services through other financial institutions, you must ensure that your requests for captures and credits include this value. 
    attr_accessor :amex_capn_data

    # Card’s track 1 and 2 data. For all processors except FDMS Nashville, this value consists of one of the following:   - Track 1 data  - Track 2 data  - Data for both tracks 1 and 2  For FDMS Nashville, this value consists of one of the following:  - Track 1 data  - Data for both tracks 1 and 2  Example: %B4111111111111111^SMITH/JOHN ^1612101976110000868000000?;4111111111111111=16121019761186800000? 
    attr_accessor :track_data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'terminal_id' => :'terminalId',
        :'terminal_serial_number' => :'terminalSerialNumber',
        :'lane_number' => :'laneNumber',
        :'card_present' => :'cardPresent',
        :'cat_level' => :'catLevel',
        :'entry_mode' => :'entryMode',
        :'terminal_capability' => :'terminalCapability',
        :'pin_entry_capability' => :'pinEntryCapability',
        :'operating_environment' => :'operatingEnvironment',
        :'emv' => :'emv',
        :'amex_capn_data' => :'amexCapnData',
        :'track_data' => :'trackData'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'terminal_id' => :'String',
        :'terminal_serial_number' => :'String',
        :'lane_number' => :'String',
        :'card_present' => :'BOOLEAN',
        :'cat_level' => :'Integer',
        :'entry_mode' => :'String',
        :'terminal_capability' => :'Integer',
        :'pin_entry_capability' => :'Integer',
        :'operating_environment' => :'String',
        :'emv' => :'Ptsv2paymentsPointOfSaleInformationEmv',
        :'amex_capn_data' => :'String',
        :'track_data' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'terminalId')
        self.terminal_id = attributes[:'terminalId']
      end

      if attributes.has_key?(:'terminalSerialNumber')
        self.terminal_serial_number = attributes[:'terminalSerialNumber']
      end

      if attributes.has_key?(:'laneNumber')
        self.lane_number = attributes[:'laneNumber']
      end

      if attributes.has_key?(:'cardPresent')
        self.card_present = attributes[:'cardPresent']
      end

      if attributes.has_key?(:'catLevel')
        self.cat_level = attributes[:'catLevel']
      end

      if attributes.has_key?(:'entryMode')
        self.entry_mode = attributes[:'entryMode']
      end

      if attributes.has_key?(:'terminalCapability')
        self.terminal_capability = attributes[:'terminalCapability']
      end

      if attributes.has_key?(:'pinEntryCapability')
        self.pin_entry_capability = attributes[:'pinEntryCapability']
      end

      if attributes.has_key?(:'operatingEnvironment')
        self.operating_environment = attributes[:'operatingEnvironment']
      end

      if attributes.has_key?(:'emv')
        self.emv = attributes[:'emv']
      end

      if attributes.has_key?(:'amexCapnData')
        self.amex_capn_data = attributes[:'amexCapnData']
      end

      if attributes.has_key?(:'trackData')
        self.track_data = attributes[:'trackData']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@terminal_id.nil? && @terminal_id.to_s.length > 8
        invalid_properties.push('invalid value for "terminal_id", the character length must be smaller than or equal to 8.')
      end

      if !@lane_number.nil? && @lane_number.to_s.length > 8
        invalid_properties.push('invalid value for "lane_number", the character length must be smaller than or equal to 8.')
      end

      if !@cat_level.nil? && @cat_level > 9
        invalid_properties.push('invalid value for "cat_level", must be smaller than or equal to 9.')
      end

      if !@cat_level.nil? && @cat_level < 1
        invalid_properties.push('invalid value for "cat_level", must be greater than or equal to 1.')
      end

      if !@entry_mode.nil? && @entry_mode.to_s.length > 11
        invalid_properties.push('invalid value for "entry_mode", the character length must be smaller than or equal to 11.')
      end

      if !@terminal_capability.nil? && @terminal_capability > 5
        invalid_properties.push('invalid value for "terminal_capability", must be smaller than or equal to 5.')
      end

      if !@terminal_capability.nil? && @terminal_capability < 1
        invalid_properties.push('invalid value for "terminal_capability", must be greater than or equal to 1.')
      end

      if !@pin_entry_capability.nil? && @pin_entry_capability > 1
        invalid_properties.push('invalid value for "pin_entry_capability", must be smaller than or equal to 1.')
      end

      if !@pin_entry_capability.nil? && @pin_entry_capability < 1
        invalid_properties.push('invalid value for "pin_entry_capability", must be greater than or equal to 1.')
      end

      if !@operating_environment.nil? && @operating_environment.to_s.length > 1
        invalid_properties.push('invalid value for "operating_environment", the character length must be smaller than or equal to 1.')
      end

      if !@amex_capn_data.nil? && @amex_capn_data.to_s.length > 12
        invalid_properties.push('invalid value for "amex_capn_data", the character length must be smaller than or equal to 12.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@terminal_id.nil? && @terminal_id.to_s.length > 8
      return false if !@lane_number.nil? && @lane_number.to_s.length > 8
      return false if !@cat_level.nil? && @cat_level > 9
      return false if !@cat_level.nil? && @cat_level < 1
      return false if !@entry_mode.nil? && @entry_mode.to_s.length > 11
      return false if !@terminal_capability.nil? && @terminal_capability > 5
      return false if !@terminal_capability.nil? && @terminal_capability < 1
      return false if !@pin_entry_capability.nil? && @pin_entry_capability > 1
      return false if !@pin_entry_capability.nil? && @pin_entry_capability < 1
      return false if !@operating_environment.nil? && @operating_environment.to_s.length > 1
      return false if !@amex_capn_data.nil? && @amex_capn_data.to_s.length > 12
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] terminal_id Value to be assigned
    def terminal_id=(terminal_id)
      if !terminal_id.nil? && terminal_id.to_s.length > 8
        fail ArgumentError, 'invalid value for "terminal_id", the character length must be smaller than or equal to 8.'
      end

      @terminal_id = terminal_id
    end

    # Custom attribute writer method with validation
    # @param [Object] lane_number Value to be assigned
    def lane_number=(lane_number)
      if !lane_number.nil? && lane_number.to_s.length > 8
        fail ArgumentError, 'invalid value for "lane_number", the character length must be smaller than or equal to 8.'
      end

      @lane_number = lane_number
    end

    # Custom attribute writer method with validation
    # @param [Object] cat_level Value to be assigned
    def cat_level=(cat_level)
      if !cat_level.nil? && cat_level > 9
        fail ArgumentError, 'invalid value for "cat_level", must be smaller than or equal to 9.'
      end

      if !cat_level.nil? && cat_level < 1
        fail ArgumentError, 'invalid value for "cat_level", must be greater than or equal to 1.'
      end

      @cat_level = cat_level
    end

    # Custom attribute writer method with validation
    # @param [Object] entry_mode Value to be assigned
    def entry_mode=(entry_mode)
      if !entry_mode.nil? && entry_mode.to_s.length > 11
        fail ArgumentError, 'invalid value for "entry_mode", the character length must be smaller than or equal to 11.'
      end

      @entry_mode = entry_mode
    end

    # Custom attribute writer method with validation
    # @param [Object] terminal_capability Value to be assigned
    def terminal_capability=(terminal_capability)
      if !terminal_capability.nil? && terminal_capability > 5
        fail ArgumentError, 'invalid value for "terminal_capability", must be smaller than or equal to 5.'
      end

      if !terminal_capability.nil? && terminal_capability < 1
        fail ArgumentError, 'invalid value for "terminal_capability", must be greater than or equal to 1.'
      end

      @terminal_capability = terminal_capability
    end

    # Custom attribute writer method with validation
    # @param [Object] pin_entry_capability Value to be assigned
    def pin_entry_capability=(pin_entry_capability)
      if !pin_entry_capability.nil? && pin_entry_capability > 1
        fail ArgumentError, 'invalid value for "pin_entry_capability", must be smaller than or equal to 1.'
      end

      if !pin_entry_capability.nil? && pin_entry_capability < 1
        fail ArgumentError, 'invalid value for "pin_entry_capability", must be greater than or equal to 1.'
      end

      @pin_entry_capability = pin_entry_capability
    end

    # Custom attribute writer method with validation
    # @param [Object] operating_environment Value to be assigned
    def operating_environment=(operating_environment)
      if !operating_environment.nil? && operating_environment.to_s.length > 1
        fail ArgumentError, 'invalid value for "operating_environment", the character length must be smaller than or equal to 1.'
      end

      @operating_environment = operating_environment
    end

    # Custom attribute writer method with validation
    # @param [Object] amex_capn_data Value to be assigned
    def amex_capn_data=(amex_capn_data)
      if !amex_capn_data.nil? && amex_capn_data.to_s.length > 12
        fail ArgumentError, 'invalid value for "amex_capn_data", the character length must be smaller than or equal to 12.'
      end

      @amex_capn_data = amex_capn_data
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          terminal_id == o.terminal_id &&
          terminal_serial_number == o.terminal_serial_number &&
          lane_number == o.lane_number &&
          card_present == o.card_present &&
          cat_level == o.cat_level &&
          entry_mode == o.entry_mode &&
          terminal_capability == o.terminal_capability &&
          pin_entry_capability == o.pin_entry_capability &&
          operating_environment == o.operating_environment &&
          emv == o.emv &&
          amex_capn_data == o.amex_capn_data &&
          track_data == o.track_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [terminal_id, terminal_serial_number, lane_number, card_present, cat_level, entry_mode, terminal_capability, pin_entry_capability, operating_environment, emv, amex_capn_data, track_data].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
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
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
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
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = CyberSource.const_get(type).new
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
        value.compact.map { |v| _to_hash(v) }
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
