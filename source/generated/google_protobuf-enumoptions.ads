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

limited with Google_Protobuf.UninterpretedOption;

package Google_Protobuf.EnumOptions is
  type Instance is new Google.Protobuf.Message.Instance with private;
  type EnumOptions_Access is access all Instance;

  ---------------------------------------------------------------------------
  -- Inherited functions and procedures from Google.Protobuf.Message       --
  ---------------------------------------------------------------------------

  use Google.Protobuf.Wire_Format;

  overriding
  procedure Clear (The_Message : in out Google_Protobuf.EnumOptions.Instance);

  overriding
  procedure Serialize_With_Cached_Sizes
     (The_Message   : in Google_Protobuf.EnumOptions.Instance;
      The_Coded_Output_Stream : in Google.Protobuf.IO.Coded_Output_Stream.Instance);

  overriding
  procedure Merge_Partial_From_Coded_Input_Stream
     (The_Message   : in out Google_Protobuf.EnumOptions.Instance;
      The_Coded_Input_Stream : in out Google.Protobuf.IO.Coded_Input_Stream.Instance);

  overriding
  procedure Merge (To    : in out Google_Protobuf.EnumOptions.Instance;
                   From : in Google_Protobuf.EnumOptions.Instance);

  overriding
  procedure Copy (To : in out Google_Protobuf.EnumOptions.Instance;
  From : in Google_Protobuf.EnumOptions.Instance);

  overriding
  function Get_Type_Name (The_Message : in Google_Protobuf.EnumOptions.Instance) return Google.Protobuf.Wire_Format.PB_String;

  overriding
  function Byte_Size (The_Message : in out Google_Protobuf.EnumOptions.Instance) return Google.Protobuf.Wire_Format.PB_Object_Size;

  overriding
  function Get_Cached_Size (The_Message : in Google_Protobuf.EnumOptions.Instance) return Google.Protobuf.Wire_Format.PB_Object_Size;

  overriding
  function Is_Initialized (The_Message : in Google_Protobuf.EnumOptions.Instance) return Boolean;

  overriding
  procedure Finalize (The_Message : in out Google_Protobuf.EnumOptions.Instance);

  ---------------------------------------------------------------------------
  --                     Field accessor declarations                       --
  ---------------------------------------------------------------------------

  -- optional bool allow_alias = 2;
  function Has_Allow_Alias (The_Message : in EnumOptions.Instance) return Boolean;
  procedure Clear_Allow_Alias (The_Message : in out EnumOptions.Instance);
  function Get_Allow_Alias (The_Message : in EnumOptions.Instance) return Google.Protobuf.Wire_Format.PB_Bool;
  procedure Set_Allow_Alias (The_Message : in out EnumOptions.Instance; value : in Google.Protobuf.Wire_Format.PB_Bool);

  -- optional bool deprecated = 3 [default = false];
  function Has_Deprecated (The_Message : in EnumOptions.Instance) return Boolean;
  procedure Clear_Deprecated (The_Message : in out EnumOptions.Instance);
  function Get_Deprecated (The_Message : in EnumOptions.Instance) return Google.Protobuf.Wire_Format.PB_Bool;
  procedure Set_Deprecated (The_Message : in out EnumOptions.Instance; value : in Google.Protobuf.Wire_Format.PB_Bool);

  -- repeated .google.protobuf.UninterpretedOption uninterpreted_option = 999;
  function Uninterpreted_Option_Size (The_Message : in EnumOptions.Instance) return Google.Protobuf.Wire_Format.PB_Object_Size;
  procedure Clear_Uninterpreted_Option (The_Message : in out EnumOptions.Instance);
  function Get_Uninterpreted_Option
     (The_Message : in EnumOptions.Instance;
      Index        : in Google.Protobuf.Wire_Format.PB_Object_Size) return access Google_Protobuf.UninterpretedOption.Instance;
  function Add_Uninterpreted_Option
    (The_Message : in out EnumOptions.Instance) return access Google_Protobuf.UninterpretedOption.Instance;

private
  use type Interfaces.Unsigned_32;
  use type Interfaces.Integer_32;
  type Instance is new Google.Protobuf.Message.Instance with record
    Allow_Alias : Google.Protobuf.Wire_Format.PB_Bool := False;
    Deprecated : Google.Protobuf.Wire_Format.PB_Bool := False;
    Uninterpreted_Option : Google.Protobuf.Message.Message_Vector.Vector;
    Has_Bits : Google.Protobuf.Wire_Format.Has_Bits_Array_Type (0 .. (3 + 31) / 32) := (others => 0);
    Cached_Size : Google.Protobuf.Wire_Format.PB_Object_Size := 0;
  end record;

  procedure Set_Has_Allow_Alias (The_Message : in out Google_Protobuf.EnumOptions.Instance);
  procedure Clear_Has_Allow_Alias (The_Message : in out Google_Protobuf.EnumOptions.Instance);
  procedure Set_Has_Deprecated (The_Message : in out Google_Protobuf.EnumOptions.Instance);
  procedure Clear_Has_Deprecated (The_Message : in out Google_Protobuf.EnumOptions.Instance);
end Google_Protobuf.EnumOptions;
--  end read only