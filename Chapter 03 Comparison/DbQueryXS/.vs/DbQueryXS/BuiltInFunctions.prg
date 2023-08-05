//
// Comments: This file contains the prototypes of the pseudo functions that are built into the compiler
// Location: G:\2023\XSharpExamplesBox\XKompendium\chapters\Chapter 03 Comparison\DbQueryXS\.vs\DbQueryXS\BuiltInFunctions.prg
// Version :  XSharpModel, Version=2.13.2.2, Culture=neutral, PublicKeyToken=ed555a0467764586

/// <summary>Return the name of an identifier as a string</summary>
/// <param name="expr">An Identifier. This could be the name of a variable or type.</param>
FUNCTION Nameof(expr AS OBJECT) AS STRING

/// <summary>Convert an ASCII code to a character value. </summary>
/// <remarks>Values between 1 and 127 are stored as literal by the compiler. Larger values are handled at runtime because they depend on the current codepage </remarks>
/// <param name="dwCode">An ASCII code from 0 to 255.</param>
FUNCTION Chr(dwCode as DWORD) AS STRING

/// <summary>Convert an ASCII code to a character value. </summary>
/// <remarks>Values between 1 and 127 are stored as literal by the compiler. Larger values are handled at runtime because they depend on the current codepage </remarks>
/// <param name="dwCode">An ASCII code from 0 to 255.</param>
FUNCTION _Chr(dwCode as DWORD) AS STRING

/// <summary>Return the type of an expression as a System.Type.</summary>
/// <param name="expr">The expression to check.</param>
FUNCTION TypeOf(expr as OBJECT) AS System.Type

/// <summary>Return the size of an expression</summary>
/// <param name="expr">The expression to check. Must be a type or a variable.</param>
FUNCTION SizeOf(expr as OBJECT) AS LONG

/// <summary>Return the number of parameters that were passed to a function/method of the Clipper calling convention.</summary>
FUNCTION PCount() AS DWORD

/// <summary>Return the number of arguments that were declared for a function/method of the Clipper calling convention.</summary>
FUNCTION ArgCount() AS DWORD

/// <summary>Return the parameters that were passed to a function/method of the Clipper calling convention as an array of Usuals</summary>
FUNCTION _Args() AS USUAL[]

/// <summary>Retrieve a parameter in a function/method of the Clipper calling convention by position.</summary>
/// <param name="nParam">A Number between 1 and PCount()</param>
FUNCTION _GetMParam(nParam as DWORD) AS USUAL

/// <summary>Retrieve a parameter in a function/method of the Clipper calling convention by position.</summary>
/// <param name="nParam">A Number between 1 and PCount()</param>
FUNCTION _GetFParam(nParam as DWORD) AS USUAL

/// <summary>This function will return the module handle for the current module.</summary>
FUNCTION _GetInst() AS PTR

/// <summary>Convert a string to PSZ.</summary>
/// <remarks>Please note that the PSZ is automatically released when the current function/method ends. <br/>
/// Use StringAlloc() to allocate PSZ values that are not automatically freed.</remarks>
/// <param name="s">The string to convert</param>
FUNCTION String2Psz(s as STRING) AS PSZ

/// <summary>Convert a string to PSZ. Please note that the PSZ is automatically released when the current function/method ends.</summary>
/// <remarks>Please note that the PSZ is automatically released when the current function/method ends. <br/>
/// Use StringAlloc() to allocate PSZ values that are not automatically freed.</remarks>
/// <param name="s">The string to convert</param>
FUNCTION Cast2Psz(s as STRING) AS PSZ

