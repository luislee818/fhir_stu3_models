module FHIR
  module STU3
    class Practitioner < FHIR::STU3::Model
      include FHIR::STU3::Hashable
      include FHIR::STU3::Json
      include FHIR::STU3::Xml

      SEARCH_PARAMS = ['address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'email', 'family', 'gender', 'given', 'phone', 'phonetic', 'telecom', 'active', 'communication', 'identifier', 'name']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Practitioner.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Practitioner.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Practitioner.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-SP', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Practitioner.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'Practitioner.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Practitioner.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Practitioner.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Practitioner.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Practitioner.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'active' => {'type'=>'boolean', 'path'=>'Practitioner.active', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'HumanName', 'path'=>'Practitioner.name', 'min'=>0, 'max'=>Float::INFINITY},
        'telecom' => {'type'=>'ContactPoint', 'path'=>'Practitioner.telecom', 'min'=>0, 'max'=>Float::INFINITY},
        'address' => {'type'=>'Address', 'path'=>'Practitioner.address', 'min'=>0, 'max'=>Float::INFINITY},
        'gender' => {'valid_codes'=>{'http://hl7.org/fhir/administrative-gender'=>['male', 'female', 'other', 'unknown']}, 'type'=>'code', 'path'=>'Practitioner.gender', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/administrative-gender'}},
        'birthDate' => {'type'=>'date', 'path'=>'Practitioner.birthDate', 'min'=>0, 'max'=>1},
        'photo' => {'type'=>'Attachment', 'path'=>'Practitioner.photo', 'min'=>0, 'max'=>Float::INFINITY},
        'qualification' => {'type'=>'Practitioner::Qualification', 'path'=>'Practitioner.qualification', 'min'=>0, 'max'=>Float::INFINITY},
        'communication' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-SP', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'CodeableConcept', 'path'=>'Practitioner.communication', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'practitionerRole' => {'type'=>'Practitioner::Practitionerrole', 'path'=>'Practitioner.practitionerRole', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Qualification < FHIR::STU3::Model
        include FHIR::STU3::Hashable
        include FHIR::STU3::Json
        include FHIR::STU3::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Qualification.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Qualification.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Qualification.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'type'=>'Identifier', 'path'=>'Qualification.identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'valid_codes'=>{'http://hl7.org/fhir/v2/0360/2.7'=>['AA', 'AAS', 'ABA', 'AE', 'AS', 'BA', 'BBA', 'BE', 'BFA', 'BN', 'BS', 'BSL', 'BSN', 'BT', 'CANP', 'CER', 'CMA', 'CNM', 'CNP', 'CNS', 'CPNP', 'CRN', 'CTR', 'DBA', 'DED', 'DIP', 'DO', 'EMT', 'EMTP', 'FPNP', 'HS', 'JD', 'MA', 'MBA', 'MCE', 'MD', 'MDA', 'MDI', 'ME', 'MED', 'MEE', 'MFA', 'MME', 'MS', 'MSL', 'MSN', 'MT', 'MTH', 'NG', 'NP', 'PA', 'PHD', 'PHE', 'PHS', 'PN', 'PharmD', 'RMA', 'RN', 'RPH', 'SEC', 'TS']}, 'type'=>'CodeableConcept', 'path'=>'Qualification.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/v2-2.7-0360'}},
          'period' => {'type'=>'Period', 'path'=>'Qualification.period', 'min'=>0, 'max'=>1},
          'issuer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Qualification.issuer', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :identifier        # 0-* [ Identifier ]
        attr_accessor :code              # 1-1 CodeableConcept
        attr_accessor :period            # 0-1 Period
        attr_accessor :issuer            # 0-1 Reference(Organization)
      end

      class Practitionerrole < FHIR::STU3::Model
        include FHIR::STU3::Hashable
        include FHIR::STU3::Json
        include FHIR::STU3::Xml

        METADATA = {
          'id' => {'type'=>'id', 'path'=>'Practitionerrole.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Practitionerrole.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Practitionerrole.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'organization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Practitionerrole.organization', 'min'=>0, 'max'=>1},
          'role' => {'valid_codes'=>{'http://hl7.org/fhir/practitioner-role'=>['doctor', 'nurse', 'pharmacist', 'researcher', 'teacher', 'ict']}, 'type'=>'CodeableConcept', 'path'=>'Practitionerrole.role', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/practitioner-role'}},
          'specialty' => {'valid_codes'=>{'http://hl7.org/fhir/practitioner-specialty'=>['cardio', 'dent', 'dietary', 'midw', 'sysarch']}, 'type'=>'CodeableConcept', 'path'=>'Practitionerrole.specialty', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/practitioner-specialty'}},
          'identifier' => {'type'=>'Identifier', 'path'=>'Practitionerrole.identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'telecom' => {'type'=>'ContactPoint', 'path'=>'Practitionerrole.telecom', 'min'=>0, 'max'=>Float::INFINITY},
          'period' => {'type'=>'Period', 'path'=>'Practitionerrole.period', 'min'=>0, 'max'=>1},
          'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Practitionerrole.location', 'min'=>0, 'max'=>Float::INFINITY},
          'healthcareService' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/HealthcareService'], 'type'=>'Reference', 'path'=>'Practitionerrole.healthcareService', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 id
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :organization      # 0-1 Reference(Organization)
        attr_accessor :role              # 0-1 CodeableConcept
        attr_accessor :specialty         # 0-* [ CodeableConcept ]
        attr_accessor :identifier        # 0-* [ Identifier ]
        attr_accessor :telecom           # 0-* [ ContactPoint ]
        attr_accessor :period            # 0-1 Period
        attr_accessor :location          # 0-* [ Reference(Location) ]
        attr_accessor :healthcareService # 0-* [ Reference(HealthcareService) ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :active            # 0-1 boolean
      attr_accessor :name              # 0-* [ HumanName ]
      attr_accessor :telecom           # 0-* [ ContactPoint ]
      attr_accessor :address           # 0-* [ Address ]
      attr_accessor :gender            # 0-1 code
      attr_accessor :birthDate         # 0-1 date
      attr_accessor :photo             # 0-* [ Attachment ]
      attr_accessor :qualification     # 0-* [ Practitioner::Qualification ]
      attr_accessor :communication     # 0-* [ CodeableConcept ]
      attr_accessor :practitionerRole  # 0-* [ Practitioner::Practitionerrole ]

      def resourceType
        'Practitioner'
      end
    end
  end
end
