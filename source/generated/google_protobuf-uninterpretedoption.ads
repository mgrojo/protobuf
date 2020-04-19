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

limited with Google_Protobuf.UninterpretedOption.NamePart;

package Google_Protobuf.UninterpretedOption is
  type Instance is new Google.Protobuf.Message.Instance with private;
  type UninterpretedOption_Access is access all Instance;

  ---------------------------------------------------------------------------
  -- Inherited functions and procedures from Google.Protobuf.Message       --
  ---------------------------------------------------------------------------

  use Google.Protobuf.Wire_Format;

  overriding
  procedure Clear (The_Message : in out Google_Protobuf.UninterpretedOption.Instance);

  overriding
  procedure Serialize_With_Cached_Sizes
     (The_Message   : in Google_Protobuf.UninterpretedOption.Instance;
      The_Coded_Output_Stream : in Google.Protobuf.IO.Coded_Output_Stream.Instance);

  overriding
  procedure Merge_Partial_From_Coded_Input_Stream
     (The_Message   : in out Google_Protobuf.UninterpretedOption.Instance;
      The_Coded_Input_Stream : in out Google.Protobuf.IO.Coded_Input_Stream.Instance);

  overriding
  procedure Merge (To    : in out Google_Protobuf.UninterpretedOption.Instance;
                   From : in Google_Protobuf.UninterpretedOption.Instance);

  overriding
  procedure Copy (To : in out Google_Protobuf.UninterpretedOption.Instance;
  From : in Google_Protobuf.UninterpretedOption.Instance);

  overriding
  function Get_Type_Name (The_Message : in Google_Protobuf.UninterpretedOption.Instance) return Google.Protobuf.Wire_Format.PB_String;

  overriding
  function Byte_Size (The_Message : in out Google_Protobuf.UninterpretedOption.Instance) return Google.Protobuf.Wire_Format.PB_Object_Size;

  overriding
  function Get_Cached_Size (The_Message : in Google_Protobuf.UninterpretedOption.Instance) return Google.Protobuf.Wire_Format.PB_Object_Size;

  overriding
  function Is_Initialized (The_Message : in Google_Protobuf.UninterpretedOption.Instance) return Boolean;

  overriding
  procedure Finalize (The_Message : in out Google_Protobuf.UninterpretedOption.Instance);

  ---------------------------------------------------------------------------
  --                     Field accessor declarations                       --
  ---------------------------------------------------------------------------

  -- repeated .google.protobuf.UninterpretedOption.NamePart name = 2;
  function Name_Size (The_Message : in UninterpretedOption.Instance) return Google.Protobuf.Wire_Format.PB_Object_Size;
  procedure Clear_Name (The_Message : in out UninterpretedOption.Instance);
  function Get_Name
     (The_Message : in UninterpretedOption.Instance;
      Index        : in Google.Protobuf.Wire_Format.PB_Object_Size) return access Google_Protobuf.UninterpretedOption.NamePart.Instance;
  function Add_Name
    (The_Message : in out UninterpretedOption.Instance) return access Google_Protobuf.UninterpretedOption.NamePart.Instance;

  -- optional string identifier_value = 3;
  function Has_Identifier_Value (The_Message : in UninterpretedOption.Instance) return Boolean;
  procedure Clear_Identifier_Value (The_Message : in out UninterpretedOption.Instance);
  function Get_Identifier_Value (The_Message : in UninterpretedOption.Instance) return Google.Protobuf.Wire_Format.PB_String;
  function Get_Identifier_Value (The_Message : in out UninterpretedOption.Instance; Size : in Integer := -1) return Google.Protobuf.Wire_Format.PB_String_Access;
  procedure Set_Identifier_Value (The_Message : in out UninterpretedOption.Instance; Value : in Google.Protobuf.Wire_Format.PB_String);
  function Release_Identifier_Value (The_Message : in out UninterpretedOption.Instance) return Google.Protobuf.Wire_Format.PB_String_Access;

  -- optional uint64 positive_int_value = 4;
  function Has_Positive_Int_Value (The_Message : in UninterpretedOption.Instance) return Boolean;
  procedure Clear_Positive_Int_Value (The_Message : in out UninterpretedOption.Instance);
  function Get_Positive_Int_Value (The_Message : in UninterpretedOption.Instance) return Google.Protobuf.Wire_Format.PB_UInt64;
  procedure Set_Positive_Int_Value (The_Message : in out UninterpretedOption.Instance; value : in Google.Protobuf.Wire_Format.PB_UInt64);

  -- optional int64 negative_int_value = 5;
  function Has_Negative_Int_Value (The_Message : in UninterpretedOption.Instance) return Boolean;
  procedure Clear_Negative_Int_Value (The_Message : in out UninterpretedOption.Instance);
  function Get_Negative_Int_Value (The_Message : in UninterpretedOption.Instance) return Google.Protobuf.Wire_Format.PB_Int64;
  procedure Set_Negative_Int_Value (The_Message : in out UninterpretedOption.Instance; value : in Google.Protobuf.Wire_Format.PB_Int64);

  -- optional double double_value = 6;
  function Has_Double_Value (The_Message : in UninterpretedOption.Instance) return Boolean;
  procedure Clear_Double_Value (The_Message : in out UninterpretedOption.Instance);
  function Get_Double_Value (The_Message : in UninterpretedOption.Instance) return Google.Protobuf.Wire_Format.PB_Double;
  procedure Set_Double_Value (The_Message : in out UninterpretedOption.Instance; value : in Google.Protobuf.Wire_Format.PB_Double);

  -- optional bytes string_value = 7;
  function Has_String_Value (The_Message : in UninterpretedOption.Instance) return Boolean;
  procedure Clear_String_Value (The_Message : in out UninterpretedOption.Instance);
  function Get_String_Value (The_Message : in UninterpretedOption.Instance) return Google.Protobuf.Wire_Format.PB_String;
  function Get_String_Value (The_Message : in out UninterpretedOption.Instance; Size : in Integer := -1) return Google.Protobuf.Wire_Format.PB_String_Access;
  procedure Set_String_Value (The_Message : in out UninterpretedOption.Instance; Value : in Google.Protobuf.Wire_Format.PB_String);
  function Release_String_Value (The_Message : in out UninterpretedOption.Instance) return Google.Protobuf.Wire_Format.PB_String_Access;

  -- optional string aggregate_value = 8;
  function Has_Aggregate_Value (The_Message : in UninterpretedOption.Instance) return Boolean;
  procedure Clear_Aggregate_Value (The_Message : in out UninterpretedOption.Instance);
  function Get_Aggregate_Value (The_Message : in UninterpretedOption.Instance) return Google.Protobuf.Wire_Format.PB_String;
  function Get_Aggregate_Value (The_Message : in out UninterpretedOption.Instance; Size : in Integer := -1) return Google.Protobuf.Wire_Format.PB_String_Access;
  procedure Set_Aggregate_Value (The_Message : in out UninterpretedOption.Instance; Value : in Google.Protobuf.Wire_Format.PB_String);
  function Release_Aggregate_Value (The_Message : in out UninterpretedOption.Instance) return Google.Protobuf.Wire_Format.PB_String_Access;

private
  use type Interfaces.Unsigned_32;
  use type Interfaces.Integer_32;
  type Instance is new Google.Protobuf.Message.Instance with record
    Name : Google.Protobuf.Message.Message_Vector.Vector;
    Identifier_Value : Google.Protobuf.Wire_Format.PB_String_Access := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
    Positive_Int_Value : Google.Protobuf.Wire_Format.PB_UInt64 := 0;
    Negative_Int_Value : Google.Protobuf.Wire_Format.PB_Int64 := 0;
    Double_Value : Google.Protobuf.Wire_Format.PB_Double := Google.Protobuf.Wire_Format.PB_Double (0.00000000000000);
    String_Value : Google.Protobuf.Wire_Format.PB_String_Access := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
    Aggregate_Value : Google.Protobuf.Wire_Format.PB_String_Access := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
    Has_Bits : Google.Protobuf.Wire_Format.Has_Bits_Array_Type (0 .. (7 + 31) / 32) := (others => 0);
    Cached_Size : Google.Protobuf.Wire_Format.PB_Object_Size := 0;
  end record;

  procedure Set_Has_Identifier_Value (The_Message : in out Google_Protobuf.UninterpretedOption.Instance);
  procedure Clear_Has_Identifier_Value (The_Message : in out Google_Protobuf.UninterpretedOption.Instance);
  procedure Set_Has_Positive_Int_Value (The_Message : in out Google_Protobuf.UninterpretedOption.Instance);
  procedure Clear_Has_Positive_Int_Value (The_Message : in out Google_Protobuf.UninterpretedOption.Instance);
  procedure Set_Has_Negative_Int_Value (The_Message : in out Google_Protobuf.UninterpretedOption.Instance);
  procedure Clear_Has_Negative_Int_Value (The_Message : in out Google_Protobuf.UninterpretedOption.Instance);
  procedure Set_Has_Double_Value (The_Message : in out Google_Protobuf.UninterpretedOption.Instance);
  procedure Clear_Has_Double_Value (The_Message : in out Google_Protobuf.UninterpretedOption.Instance);
  procedure Set_Has_String_Value (The_Message : in out Google_Protobuf.UninterpretedOption.Instance);
  procedure Clear_Has_String_Value (The_Message : in out Google_Protobuf.UninterpretedOption.Instance);
  procedure Set_Has_Aggregate_Value (The_Message : in out Google_Protobuf.UninterpretedOption.Instance);
  procedure Clear_Has_Aggregate_Value (The_Message : in out Google_Protobuf.UninterpretedOption.Instance);
end Google_Protobuf.UninterpretedOption;
--  end read only