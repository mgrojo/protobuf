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

limited with Google_Protobuf.MethodOptions;

package Google_Protobuf.MethodDescriptorProto is
  type Instance is new Google.Protobuf.Message.Instance with private;
  type MethodDescriptorProto_Access is access all Instance;

  ---------------------------------------------------------------------------
  -- Inherited functions and procedures from Google.Protobuf.Message       --
  ---------------------------------------------------------------------------

  use Google.Protobuf.Wire_Format;

  overriding
  procedure Clear (The_Message : in out Google_Protobuf.MethodDescriptorProto.Instance);

  overriding
  procedure Serialize_With_Cached_Sizes
     (The_Message   : in Google_Protobuf.MethodDescriptorProto.Instance;
      The_Coded_Output_Stream : in Google.Protobuf.IO.Coded_Output_Stream.Instance);

  overriding
  procedure Merge_Partial_From_Coded_Input_Stream
     (The_Message   : in out Google_Protobuf.MethodDescriptorProto.Instance;
      The_Coded_Input_Stream : in out Google.Protobuf.IO.Coded_Input_Stream.Instance);

  overriding
  procedure Merge (To    : in out Google_Protobuf.MethodDescriptorProto.Instance;
                   From : in Google_Protobuf.MethodDescriptorProto.Instance);

  overriding
  procedure Copy (To : in out Google_Protobuf.MethodDescriptorProto.Instance;
  From : in Google_Protobuf.MethodDescriptorProto.Instance);

  overriding
  function Get_Type_Name (The_Message : in Google_Protobuf.MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String;

  overriding
  function Byte_Size (The_Message : in out Google_Protobuf.MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_Object_Size;

  overriding
  function Get_Cached_Size (The_Message : in Google_Protobuf.MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_Object_Size;

  overriding
  function Is_Initialized (The_Message : in Google_Protobuf.MethodDescriptorProto.Instance) return Boolean;

  overriding
  procedure Finalize (The_Message : in out Google_Protobuf.MethodDescriptorProto.Instance);

  ---------------------------------------------------------------------------
  --                     Field accessor declarations                       --
  ---------------------------------------------------------------------------

  -- optional string name = 1;
  function Has_Name (The_Message : in MethodDescriptorProto.Instance) return Boolean;
  procedure Clear_Name (The_Message : in out MethodDescriptorProto.Instance);
  function Get_Name (The_Message : in MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String;
  function Get_Name (The_Message : in out MethodDescriptorProto.Instance; Size : in Integer := -1) return Google.Protobuf.Wire_Format.PB_String_Access;
  procedure Set_Name (The_Message : in out MethodDescriptorProto.Instance; Value : in Google.Protobuf.Wire_Format.PB_String);
  function Release_Name (The_Message : in out MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String_Access;

  -- optional string input_type = 2;
  function Has_Input_Type (The_Message : in MethodDescriptorProto.Instance) return Boolean;
  procedure Clear_Input_Type (The_Message : in out MethodDescriptorProto.Instance);
  function Get_Input_Type (The_Message : in MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String;
  function Get_Input_Type (The_Message : in out MethodDescriptorProto.Instance; Size : in Integer := -1) return Google.Protobuf.Wire_Format.PB_String_Access;
  procedure Set_Input_Type (The_Message : in out MethodDescriptorProto.Instance; Value : in Google.Protobuf.Wire_Format.PB_String);
  function Release_Input_Type (The_Message : in out MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String_Access;

  -- optional string output_type = 3;
  function Has_Output_Type (The_Message : in MethodDescriptorProto.Instance) return Boolean;
  procedure Clear_Output_Type (The_Message : in out MethodDescriptorProto.Instance);
  function Get_Output_Type (The_Message : in MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String;
  function Get_Output_Type (The_Message : in out MethodDescriptorProto.Instance; Size : in Integer := -1) return Google.Protobuf.Wire_Format.PB_String_Access;
  procedure Set_Output_Type (The_Message : in out MethodDescriptorProto.Instance; Value : in Google.Protobuf.Wire_Format.PB_String);
  function Release_Output_Type (The_Message : in out MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String_Access;

  -- optional .google.protobuf.MethodOptions options = 4;
  function Has_Options (The_Message : in MethodDescriptorProto.Instance) return Boolean;
  procedure Clear_Options (The_Message : in out MethodDescriptorProto.Instance);
  function Get_Options (The_Message : in out MethodDescriptorProto.Instance) return access Google_Protobuf.MethodOptions.Instance;
  function Release_Options (The_Message : in out MethodDescriptorProto.Instance) return access Google_Protobuf.MethodOptions.Instance;
  procedure Set_Options
     (The_Message : in out MethodDescriptorProto.Instance;
      Value       : in Google_Protobuf.MethodOptions.MethodOptions_Access);

  -- optional bool client_streaming = 5 [default = false];
  function Has_Client_Streaming (The_Message : in MethodDescriptorProto.Instance) return Boolean;
  procedure Clear_Client_Streaming (The_Message : in out MethodDescriptorProto.Instance);
  function Get_Client_Streaming (The_Message : in MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_Bool;
  procedure Set_Client_Streaming (The_Message : in out MethodDescriptorProto.Instance; value : in Google.Protobuf.Wire_Format.PB_Bool);

  -- optional bool server_streaming = 6 [default = false];
  function Has_Server_Streaming (The_Message : in MethodDescriptorProto.Instance) return Boolean;
  procedure Clear_Server_Streaming (The_Message : in out MethodDescriptorProto.Instance);
  function Get_Server_Streaming (The_Message : in MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_Bool;
  procedure Set_Server_Streaming (The_Message : in out MethodDescriptorProto.Instance; value : in Google.Protobuf.Wire_Format.PB_Bool);

private
  use type Interfaces.Unsigned_32;
  use type Interfaces.Integer_32;
  type Instance is new Google.Protobuf.Message.Instance with record
    Name : Google.Protobuf.Wire_Format.PB_String_Access := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
    Input_Type : Google.Protobuf.Wire_Format.PB_String_Access := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
    Output_Type : Google.Protobuf.Wire_Format.PB_String_Access := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
    Options : access Google_Protobuf.MethodOptions.Instance;
    Client_Streaming : Google.Protobuf.Wire_Format.PB_Bool := False;
    Server_Streaming : Google.Protobuf.Wire_Format.PB_Bool := False;
    Has_Bits : Google.Protobuf.Wire_Format.Has_Bits_Array_Type (0 .. (6 + 31) / 32) := (others => 0);
    Cached_Size : Google.Protobuf.Wire_Format.PB_Object_Size := 0;
  end record;

  procedure Set_Has_Name (The_Message : in out Google_Protobuf.MethodDescriptorProto.Instance);
  procedure Clear_Has_Name (The_Message : in out Google_Protobuf.MethodDescriptorProto.Instance);
  procedure Set_Has_Input_Type (The_Message : in out Google_Protobuf.MethodDescriptorProto.Instance);
  procedure Clear_Has_Input_Type (The_Message : in out Google_Protobuf.MethodDescriptorProto.Instance);
  procedure Set_Has_Output_Type (The_Message : in out Google_Protobuf.MethodDescriptorProto.Instance);
  procedure Clear_Has_Output_Type (The_Message : in out Google_Protobuf.MethodDescriptorProto.Instance);
  procedure Set_Has_Options (The_Message : in out Google_Protobuf.MethodDescriptorProto.Instance);
  procedure Clear_Has_Options (The_Message : in out Google_Protobuf.MethodDescriptorProto.Instance);
  procedure Set_Has_Client_Streaming (The_Message : in out Google_Protobuf.MethodDescriptorProto.Instance);
  procedure Clear_Has_Client_Streaming (The_Message : in out Google_Protobuf.MethodDescriptorProto.Instance);
  procedure Set_Has_Server_Streaming (The_Message : in out Google_Protobuf.MethodDescriptorProto.Instance);
  procedure Clear_Has_Server_Streaming (The_Message : in out Google_Protobuf.MethodDescriptorProto.Instance);
end Google_Protobuf.MethodDescriptorProto;
--  end read only