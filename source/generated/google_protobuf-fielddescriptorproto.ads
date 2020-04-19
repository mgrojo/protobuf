--  begin read only
--  Generated by the protocol buffer compiler. DO NOT EDIT!
--  source: google/protobuf/descriptor.proto
--
--  ----------------------------------------------------------------------
pragma Warnings (Off);
pragma Ada_2012;
with Google.Protobuf.Message;
with Google.Protobuf.Wire_Format;
with Google.Protobuf.IO.Coded_Output_Stream;
with Google.Protobuf.IO.Coded_Input_Stream;
with Google.Protobuf.Generated_Message_Utilities;
with Ada.Streams.Stream_IO;
with Ada.Containers.Vectors;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
with Interfaces;

limited with Google_Protobuf.FieldOptions;

package Google_Protobuf.FieldDescriptorProto is
  type Instance is new Google.Protobuf.Message.Instance with private;
  type FieldDescriptorProto_Access is access all Instance;

  subtype TypeX is Google_Protobuf.Enumeration.FieldDescriptorProto.TypeX;
  subtype Label is Google_Protobuf.Enumeration.FieldDescriptorProto.Label;

  ---------------------------------------------------------------------------
  -- Inherited functions and procedures from Google.Protobuf.Message       --
  ---------------------------------------------------------------------------

  use Google.Protobuf.Wire_Format;

  overriding
  procedure Clear (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);

  overriding
  procedure Serialize_With_Cached_Sizes
     (The_Message   : in Google_Protobuf.FieldDescriptorProto.Instance;
      The_Coded_Output_Stream : in Google.Protobuf.IO.Coded_Output_Stream.Instance);

  overriding
  procedure Merge_Partial_From_Coded_Input_Stream
     (The_Message   : in out Google_Protobuf.FieldDescriptorProto.Instance;
      The_Coded_Input_Stream : in out Google.Protobuf.IO.Coded_Input_Stream.Instance);

  overriding
  procedure Merge (To    : in out Google_Protobuf.FieldDescriptorProto.Instance;
                   From : in Google_Protobuf.FieldDescriptorProto.Instance);

  overriding
  procedure Copy (To : in out Google_Protobuf.FieldDescriptorProto.Instance;
  From : in Google_Protobuf.FieldDescriptorProto.Instance);

  overriding
  function Get_Type_Name (The_Message : in Google_Protobuf.FieldDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String;

  overriding
  function Byte_Size (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_Object_Size;

  overriding
  function Get_Cached_Size (The_Message : in Google_Protobuf.FieldDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_Object_Size;

  overriding
  function Is_Initialized (The_Message : in Google_Protobuf.FieldDescriptorProto.Instance) return Boolean;

  overriding
  procedure Finalize (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);

  ---------------------------------------------------------------------------
  --                     Field accessor declarations                       --
  ---------------------------------------------------------------------------

  -- optional string name = 1;
  function Has_Name (The_Message : in FieldDescriptorProto.Instance) return Boolean;
  procedure Clear_Name (The_Message : in out FieldDescriptorProto.Instance);
  function Get_Name (The_Message : in FieldDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String;
  function Get_Name (The_Message : in out FieldDescriptorProto.Instance; Size : in Integer := -1) return Google.Protobuf.Wire_Format.PB_String_Access;
  procedure Set_Name (The_Message : in out FieldDescriptorProto.Instance; Value : in Google.Protobuf.Wire_Format.PB_String);
  function Release_Name (The_Message : in out FieldDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String_Access;

  -- optional int32 number = 3;
  function Has_Number (The_Message : in FieldDescriptorProto.Instance) return Boolean;
  procedure Clear_Number (The_Message : in out FieldDescriptorProto.Instance);
  function Get_Number (The_Message : in FieldDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_Int32;
  procedure Set_Number (The_Message : in out FieldDescriptorProto.Instance; value : in Google.Protobuf.Wire_Format.PB_Int32);

  -- optional .google.protobuf.FieldDescriptorProto.Label label = 4;
  function Has_Label (The_Message : in FieldDescriptorProto.Instance) return Boolean;
  procedure Clear_Label (The_Message : in out FieldDescriptorProto.Instance);
  function Get_Label (The_Message : in FieldDescriptorProto.Instance) return Google_Protobuf.FieldDescriptorProto.Label;
  procedure Set_Label
     (The_Message : in out FieldDescriptorProto.Instance;
      Value       : in Google_Protobuf.FieldDescriptorProto.Label);

  -- optional .google.protobuf.FieldDescriptorProto.TypeX type = 5;
  function Has_Type_Pb (The_Message : in FieldDescriptorProto.Instance) return Boolean;
  procedure Clear_Type_Pb (The_Message : in out FieldDescriptorProto.Instance);
  function Get_Type_Pb (The_Message : in FieldDescriptorProto.Instance) return Google_Protobuf.FieldDescriptorProto.TypeX;
  procedure Set_Type_Pb
     (The_Message : in out FieldDescriptorProto.Instance;
      Value       : in Google_Protobuf.FieldDescriptorProto.TypeX);

  -- optional string type_name = 6;
  function Has_Type_Name (The_Message : in FieldDescriptorProto.Instance) return Boolean;
  procedure Clear_Type_Name (The_Message : in out FieldDescriptorProto.Instance);
  function Get_TypeX_Name (The_Message : in FieldDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String;
  function Get_Type_Name (The_Message : in out FieldDescriptorProto.Instance; Size : in Integer := -1) return Google.Protobuf.Wire_Format.PB_String_Access;
  procedure Set_Type_Name (The_Message : in out FieldDescriptorProto.Instance; Value : in Google.Protobuf.Wire_Format.PB_String);
  function Release_Type_Name (The_Message : in out FieldDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String_Access;

  -- optional string extendee = 2;
  function Has_Extendee (The_Message : in FieldDescriptorProto.Instance) return Boolean;
  procedure Clear_Extendee (The_Message : in out FieldDescriptorProto.Instance);
  function Get_Extendee (The_Message : in FieldDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String;
  function Get_Extendee (The_Message : in out FieldDescriptorProto.Instance; Size : in Integer := -1) return Google.Protobuf.Wire_Format.PB_String_Access;
  procedure Set_Extendee (The_Message : in out FieldDescriptorProto.Instance; Value : in Google.Protobuf.Wire_Format.PB_String);
  function Release_Extendee (The_Message : in out FieldDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String_Access;

  -- optional string default_value = 7;
  function Has_Default_Value (The_Message : in FieldDescriptorProto.Instance) return Boolean;
  procedure Clear_Default_Value (The_Message : in out FieldDescriptorProto.Instance);
  function Get_Default_Value (The_Message : in FieldDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String;
  function Get_Default_Value (The_Message : in out FieldDescriptorProto.Instance; Size : in Integer := -1) return Google.Protobuf.Wire_Format.PB_String_Access;
  procedure Set_Default_Value (The_Message : in out FieldDescriptorProto.Instance; Value : in Google.Protobuf.Wire_Format.PB_String);
  function Release_Default_Value (The_Message : in out FieldDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String_Access;

  -- optional int32 oneof_index = 9;
  function Has_Oneof_Index (The_Message : in FieldDescriptorProto.Instance) return Boolean;
  procedure Clear_Oneof_Index (The_Message : in out FieldDescriptorProto.Instance);
  function Get_Oneof_Index (The_Message : in FieldDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_Int32;
  procedure Set_Oneof_Index (The_Message : in out FieldDescriptorProto.Instance; value : in Google.Protobuf.Wire_Format.PB_Int32);

  -- optional string json_name = 10;
  function Has_Json_Name (The_Message : in FieldDescriptorProto.Instance) return Boolean;
  procedure Clear_Json_Name (The_Message : in out FieldDescriptorProto.Instance);
  function Get_Json_Name (The_Message : in FieldDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String;
  function Get_Json_Name (The_Message : in out FieldDescriptorProto.Instance; Size : in Integer := -1) return Google.Protobuf.Wire_Format.PB_String_Access;
  procedure Set_Json_Name (The_Message : in out FieldDescriptorProto.Instance; Value : in Google.Protobuf.Wire_Format.PB_String);
  function Release_Json_Name (The_Message : in out FieldDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String_Access;

  -- optional .google.protobuf.FieldOptions options = 8;
  function Has_Options (The_Message : in FieldDescriptorProto.Instance) return Boolean;
  procedure Clear_Options (The_Message : in out FieldDescriptorProto.Instance);
  function Get_Options (The_Message : in out FieldDescriptorProto.Instance) return access Google_Protobuf.FieldOptions.Instance;
  function Release_Options (The_Message : in out FieldDescriptorProto.Instance) return access Google_Protobuf.FieldOptions.Instance;
  procedure Set_Options
     (The_Message : in out FieldDescriptorProto.Instance;
      Value       : in Google_Protobuf.FieldOptions.FieldOptions_Access);

  ---------------------------------------------------------------------------
  -- Enumeration Literals ---------------------------------------------------
  ---------------------------------------------------------------------------

  function TYPE_DOUBLE return TypeX renames Google_Protobuf.Enumeration.FieldDescriptorProto.TYPE_DOUBLE;

  function TYPE_FLOAT return TypeX renames Google_Protobuf.Enumeration.FieldDescriptorProto.TYPE_FLOAT;

  function TYPE_INT64 return TypeX renames Google_Protobuf.Enumeration.FieldDescriptorProto.TYPE_INT64;

  function TYPE_UINT64 return TypeX renames Google_Protobuf.Enumeration.FieldDescriptorProto.TYPE_UINT64;

  function TYPE_INT32 return TypeX renames Google_Protobuf.Enumeration.FieldDescriptorProto.TYPE_INT32;

  function TYPE_FIXED64 return TypeX renames Google_Protobuf.Enumeration.FieldDescriptorProto.TYPE_FIXED64;

  function TYPE_FIXED32 return TypeX renames Google_Protobuf.Enumeration.FieldDescriptorProto.TYPE_FIXED32;

  function TYPE_BOOL return TypeX renames Google_Protobuf.Enumeration.FieldDescriptorProto.TYPE_BOOL;

  function TYPE_STRING return TypeX renames Google_Protobuf.Enumeration.FieldDescriptorProto.TYPE_STRING;

  function TYPE_GROUP return TypeX renames Google_Protobuf.Enumeration.FieldDescriptorProto.TYPE_GROUP;

  function TYPE_MESSAGE return TypeX renames Google_Protobuf.Enumeration.FieldDescriptorProto.TYPE_MESSAGE;

  function TYPE_BYTES return TypeX renames Google_Protobuf.Enumeration.FieldDescriptorProto.TYPE_BYTES;

  function TYPE_UINT32 return TypeX renames Google_Protobuf.Enumeration.FieldDescriptorProto.TYPE_UINT32;

  function TYPE_ENUM return TypeX renames Google_Protobuf.Enumeration.FieldDescriptorProto.TYPE_ENUM;

  function TYPE_SFIXED32 return TypeX renames Google_Protobuf.Enumeration.FieldDescriptorProto.TYPE_SFIXED32;

  function TYPE_SFIXED64 return TypeX renames Google_Protobuf.Enumeration.FieldDescriptorProto.TYPE_SFIXED64;

  function TYPE_SINT32 return TypeX renames Google_Protobuf.Enumeration.FieldDescriptorProto.TYPE_SINT32;

  function TYPE_SINT64 return TypeX renames Google_Protobuf.Enumeration.FieldDescriptorProto.TYPE_SINT64;

  function Enumeration_To_PB_Int32 is new Ada.Unchecked_Conversion (TypeX, Google.Protobuf.Wire_Format.PB_Int32);
  function PB_Int32_To_Enumeration is new Ada.Unchecked_Conversion (Google.Protobuf.Wire_Format.PB_Int32, TypeX);

  function LABEL_OPTIONAL return Label renames Google_Protobuf.Enumeration.FieldDescriptorProto.LABEL_OPTIONAL;

  function LABEL_REQUIRED return Label renames Google_Protobuf.Enumeration.FieldDescriptorProto.LABEL_REQUIRED;

  function LABEL_REPEATED return Label renames Google_Protobuf.Enumeration.FieldDescriptorProto.LABEL_REPEATED;

  function Enumeration_To_PB_Int32 is new Ada.Unchecked_Conversion (Label, Google.Protobuf.Wire_Format.PB_Int32);
  function PB_Int32_To_Enumeration is new Ada.Unchecked_Conversion (Google.Protobuf.Wire_Format.PB_Int32, Label);

private
  use type Interfaces.Unsigned_32;
  use type Interfaces.Integer_32;
  type Instance is new Google.Protobuf.Message.Instance with record
    Name : Google.Protobuf.Wire_Format.PB_String_Access := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
    Number : Google.Protobuf.Wire_Format.PB_Int32 := 0;
    Label : Google_Protobuf.FieldDescriptorProto.Label := Google_Protobuf.FieldDescriptorProto.Label'(LABEL_OPTIONAL);
    Type_Pb : Google_Protobuf.FieldDescriptorProto.TypeX := Google_Protobuf.FieldDescriptorProto.TypeX'(TYPE_DOUBLE);
    Type_Name : Google.Protobuf.Wire_Format.PB_String_Access := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
    Extendee : Google.Protobuf.Wire_Format.PB_String_Access := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
    Default_Value : Google.Protobuf.Wire_Format.PB_String_Access := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
    Oneof_Index : Google.Protobuf.Wire_Format.PB_Int32 := 0;
    Json_Name : Google.Protobuf.Wire_Format.PB_String_Access := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
    Options : access Google_Protobuf.FieldOptions.Instance;
    Has_Bits : Google.Protobuf.Wire_Format.Has_Bits_Array_Type (0 .. (10 + 31) / 32) := (others => 0);
    Cached_Size : Google.Protobuf.Wire_Format.PB_Object_Size := 0;
  end record;

  procedure Set_Has_Name (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
  procedure Clear_Has_Name (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
  procedure Set_Has_Number (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
  procedure Clear_Has_Number (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
  procedure Set_Has_Label (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
  procedure Clear_Has_Label (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
  procedure Set_Has_Type_Pb (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
  procedure Clear_Has_Type_Pb (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
  procedure Set_Has_Type_Name (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
  procedure Clear_Has_Type_Name (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
  procedure Set_Has_Extendee (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
  procedure Clear_Has_Extendee (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
  procedure Set_Has_Default_Value (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
  procedure Clear_Has_Default_Value (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
  procedure Set_Has_Oneof_Index (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
  procedure Clear_Has_Oneof_Index (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
  procedure Set_Has_Json_Name (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
  procedure Clear_Has_Json_Name (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
  procedure Set_Has_Options (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
  procedure Clear_Has_Options (The_Message : in out Google_Protobuf.FieldDescriptorProto.Instance);
end Google_Protobuf.FieldDescriptorProto;
--  end read only