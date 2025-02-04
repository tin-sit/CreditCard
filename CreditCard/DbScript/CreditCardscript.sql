USE [Interview]
GO
/****** Object:  Table [dbo].[CreditCards]    Script Date: 2/26/2021 6:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCards](
	[Name] [varchar](50) NOT NULL,
	[CreditCardNo] [bigint] NOT NULL,
	[CreditCardCVC] [int] NOT NULL,
	[ExpiryDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BankCreditCard] PRIMARY KEY CLUSTERED 
(
	[CreditCardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ELMAH_Error]    Script Date: 2/26/2021 6:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ELMAH_Error](
	[ErrorId] [uniqueidentifier] NOT NULL,
	[Application] [nvarchar](60) NOT NULL,
	[Host] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Source] [nvarchar](60) NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
	[User] [nvarchar](50) NOT NULL,
	[StatusCode] [int] NOT NULL,
	[TimeUtc] [datetime] NOT NULL,
	[Sequence] [int] IDENTITY(1,1) NOT NULL,
	[AllXml] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[CreditCards] ([Name], [CreditCardNo], [CreditCardCVC], [ExpiryDate]) VALUES (N'Jason', 189393, 323332, CAST(N'2021-02-26T18:29:40.000' AS DateTime))
INSERT [dbo].[CreditCards] ([Name], [CreditCardNo], [CreditCardCVC], [ExpiryDate]) VALUES (N'Jae', 6378392932232, 3, CAST(N'2021-02-26T18:28:40.000' AS DateTime))
INSERT [dbo].[CreditCards] ([Name], [CreditCardNo], [CreditCardCVC], [ExpiryDate]) VALUES (N'Josep', 6444392932232, 789, CAST(N'2021-02-26T18:35:02.000' AS DateTime))
INSERT [dbo].[CreditCards] ([Name], [CreditCardNo], [CreditCardCVC], [ExpiryDate]) VALUES (N'Teddy', 88882823224224, 615, CAST(N'2021-02-26T18:24:50.000' AS DateTime))
INSERT [dbo].[CreditCards] ([Name], [CreditCardNo], [CreditCardCVC], [ExpiryDate]) VALUES (N'Jason', 672288288282828, 673, CAST(N'2021-02-26T18:24:50.000' AS DateTime))
INSERT [dbo].[CreditCards] ([Name], [CreditCardNo], [CreditCardCVC], [ExpiryDate]) VALUES (N'Mahash', 739330939348232, 5, CAST(N'2021-02-26T18:33:43.000' AS DateTime))
INSERT [dbo].[CreditCards] ([Name], [CreditCardNo], [CreditCardCVC], [ExpiryDate]) VALUES (N'Laura', 739330939348983, 123, CAST(N'2021-02-26T18:26:23.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ELMAH_Error] ON 

INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'8d08c800-bab7-45ea-925a-c7a8b17979ba', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.FormatException', N'mscorlib', N'Input string was not in a correct format.', N'', 0, CAST(N'2021-02-26T04:57:40.840' AS DateTime), 1, N'<error
  host="DESKTOP-9HITPSD"
  type="System.FormatException"
  message="Input string was not in a correct format."
  source="mscorlib"
  detail="System.FormatException: Input string was not in a correct format.&#xD;&#xA;   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer&amp; number, NumberFormatInfo info, Boolean parseDecimal)&#xD;&#xA;   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)&#xD;&#xA;   at System.Convert.ToInt32(String value)&#xD;&#xA;   at CreditCard.Controllers.CreditCardApiController.GetCreditCardDetail(Nullable`1 CreditCardNo) in C:\Users\tin\source\repos\CreditCard\CreditCard\Controllers\CreditCardApiController.cs:line 42"
  time="2021-02-26T04:57:40.8400046Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_ACCEPT:application/json&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Accept: application/json&#xD;&#xA;Host: localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="0" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/api/GetCreditCardDetail" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\api\GetCreditCardDetail" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="CreditCardNo=222" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="58628" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="GET" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/api/GetCreditCardDetail" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/api/GetCreditCardDetail" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="application/json" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
  </serverVariables>
  <queryString>
    <item
      name="CreditCardNo">
      <value
        string="222" />
    </item>
  </queryString>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'd97bde0a-c4e6-4737-8dc5-81ceb522cfa7', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.InvalidOperationException', N'EntityFramework', N'The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.', N'', 0, CAST(N'2021-02-26T05:03:07.707' AS DateTime), 2, N'<error
  host="DESKTOP-9HITPSD"
  type="System.InvalidOperationException"
  message="The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid."
  source="EntityFramework"
  detail="System.InvalidOperationException: The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper.ErrorHandlingValueReader`1.GetValue(DbDataReader reader, Int32 ordinal)&#xD;&#xA;   at lambda_method(Closure , Shaper )&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Coordinator`1.ReadNextElement(Shaper shaper)&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper`1.SimpleEnumerator.MoveNext()&#xD;&#xA;   at System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()&#xD;&#xA;   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)&#xD;&#xA;   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)&#xD;&#xA;   at CreditCard.Repositories.GenericRepository`1.GetAll() in C:\Users\tin\source\repos\CreditCard\CreditCard\Repositories\GenericRepository.cs:line 26&#xD;&#xA;   at CreditCard.Controllers.CreditCardApiController.GetAllCreditCards() in C:\Users\tin\source\repos\CreditCard\CreditCard\Controllers\CreditCardApiController.cs:line 34"
  time="2021-02-26T05:03:07.7064619Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_CONNECTION:Keep-Alive&#xD;&#xA;HTTP_ACCEPT:application/json&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Connection: Keep-Alive&#xD;&#xA;Accept: application/json&#xD;&#xA;Host: localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="0" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\api\GetAllCreditCards" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="58711" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="GET" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="HTTP_CONNECTION">
      <value
        string="Keep-Alive" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="application/json" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
  </serverVariables>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'e413bfd1-9b0e-435a-b553-cc39396253b6', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.InvalidOperationException', N'EntityFramework', N'The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.', N'', 0, CAST(N'2021-02-26T05:04:14.797' AS DateTime), 3, N'<error
  host="DESKTOP-9HITPSD"
  type="System.InvalidOperationException"
  message="The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid."
  source="EntityFramework"
  detail="System.InvalidOperationException: The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper.ErrorHandlingValueReader`1.GetValue(DbDataReader reader, Int32 ordinal)&#xD;&#xA;   at lambda_method(Closure , Shaper )&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Coordinator`1.ReadNextElement(Shaper shaper)&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper`1.SimpleEnumerator.MoveNext()&#xD;&#xA;   at System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()&#xD;&#xA;   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)&#xD;&#xA;   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)&#xD;&#xA;   at CreditCard.Repositories.GenericRepository`1.GetAll() in C:\Users\tin\source\repos\CreditCard\CreditCard\Repositories\GenericRepository.cs:line 26&#xD;&#xA;   at CreditCard.Controllers.CreditCardApiController.GetAllCreditCards() in C:\Users\tin\source\repos\CreditCard\CreditCard\Controllers\CreditCardApiController.cs:line 34"
  time="2021-02-26T05:04:14.7976118Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_ACCEPT:application/json&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Accept: application/json&#xD;&#xA;Host: localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="0" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\api\GetAllCreditCards" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="58725" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="GET" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="application/json" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
  </serverVariables>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'f7ff2740-f088-4b52-a393-22259e6c89be', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.Data.SqlClient.SqlException', N'.Net SqlClient Data Provider', N'Violation of PRIMARY KEY constraint ''PK_BankCreditCard''. Cannot insert duplicate key in object ''dbo.CreditCards''. The duplicate key value is (24242).
The statement has been terminated.', N'', 0, CAST(N'2021-02-26T05:04:20.307' AS DateTime), 4, N'<error
  host="DESKTOP-9HITPSD"
  type="System.Data.SqlClient.SqlException"
  message="Violation of PRIMARY KEY constraint ''PK_BankCreditCard''. Cannot insert duplicate key in object ''dbo.CreditCards''. The duplicate key value is (24242).&#xD;&#xA;The statement has been terminated."
  source=".Net SqlClient Data Provider"
  detail="System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---&gt; System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---&gt; System.Data.SqlClient.SqlException: Violation of PRIMARY KEY constraint ''PK_BankCreditCard''. Cannot insert duplicate key in object ''dbo.CreditCards''. The duplicate key value is (24242).&#xD;&#xA;The statement has been terminated.&#xD;&#xA;   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)&#xD;&#xA;   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)&#xD;&#xA;   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)&#xD;&#xA;   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean&amp; dataReady)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption, Boolean shouldCacheForAlwaysEncrypted)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task&amp; task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task&amp; task, Boolean&amp; usedCache, Boolean asyncWrite, Boolean inRetry)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean&amp; usedCache, Boolean asyncWrite, Boolean inRetry)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()&#xD;&#xA;   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.&lt;&gt;c.&lt;NonQuery&gt;b__4_0(DbCommand t, DbCommandInterceptionContext`1 c)&#xD;&#xA;   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)&#xD;&#xA;   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)&#xD;&#xA;   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()&#xD;&#xA;   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)&#xD;&#xA;   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()&#xD;&#xA;   --- End of inner exception stack trace ---&#xD;&#xA;   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()&#xD;&#xA;   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.&lt;&gt;c.&lt;Update&gt;b__21_0(UpdateTranslator ut)&#xD;&#xA;   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)&#xD;&#xA;   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.&lt;SaveChangesToStore&gt;b__153_0()&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.&lt;&gt;c__DisplayClass148_0.&lt;SaveChangesInternal&gt;b__0()&#xD;&#xA;   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)&#xD;&#xA;   at System.Data.Entity.Internal.InternalContext.SaveChanges()&#xD;&#xA;   --- End of inner exception stack trace ---&#xD;&#xA;   at System.Data.Entity.Internal.InternalContext.SaveChanges()&#xD;&#xA;   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()&#xD;&#xA;   at System.Data.Entity.DbContext.SaveChanges()&#xD;&#xA;   at CreditCard.Repositories.GenericRepository`1.Save() in C:\Users\tin\source\repos\CreditCard\CreditCard\Repositories\GenericRepository.cs:line 54&#xD;&#xA;   at CreditCard.Controllers.CreditCardApiController.StoreCreditCard(CreditCards clientobj) in C:\Users\tin\source\repos\CreditCard\CreditCard\Controllers\CreditCardApiController.cs:line 71"
  time="2021-02-26T05:04:20.3051172Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_CONTENT_LENGTH:92&#xD;&#xA;HTTP_CONTENT_TYPE:application/json; charset=utf-8&#xD;&#xA;HTTP_ACCEPT:application/json&#xD;&#xA;HTTP_EXPECT:100-continue&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Content-Length: 92&#xD;&#xA;Content-Type: application/json; charset=utf-8&#xD;&#xA;Accept: application/json&#xD;&#xA;Expect: 100-continue&#xD;&#xA;Host: localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="92" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="application/json; charset=utf-8" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/api/StoreCreditCard/" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\api\StoreCreditCard\" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="58726" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="POST" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/api/StoreCreditCard/" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/api/StoreCreditCard/" />
    </item>
    <item
      name="HTTP_CONTENT_LENGTH">
      <value
        string="92" />
    </item>
    <item
      name="HTTP_CONTENT_TYPE">
      <value
        string="application/json; charset=utf-8" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="application/json" />
    </item>
    <item
      name="HTTP_EXPECT">
      <value
        string="100-continue" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
  </serverVariables>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'b8be369c-46c1-4a18-a7ec-a5b94a190cd2', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.InvalidOperationException', N'EntityFramework', N'The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.', N'', 0, CAST(N'2021-02-26T05:04:20.343' AS DateTime), 5, N'<error
  host="DESKTOP-9HITPSD"
  type="System.InvalidOperationException"
  message="The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid."
  source="EntityFramework"
  detail="System.InvalidOperationException: The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper.ErrorHandlingValueReader`1.GetValue(DbDataReader reader, Int32 ordinal)&#xD;&#xA;   at lambda_method(Closure , Shaper )&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Coordinator`1.ReadNextElement(Shaper shaper)&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper`1.SimpleEnumerator.MoveNext()&#xD;&#xA;   at System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()&#xD;&#xA;   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)&#xD;&#xA;   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)&#xD;&#xA;   at CreditCard.Repositories.GenericRepository`1.GetAll() in C:\Users\tin\source\repos\CreditCard\CreditCard\Repositories\GenericRepository.cs:line 26&#xD;&#xA;   at CreditCard.Controllers.CreditCardApiController.GetAllCreditCards() in C:\Users\tin\source\repos\CreditCard\CreditCard\Controllers\CreditCardApiController.cs:line 34"
  time="2021-02-26T05:04:20.3440977Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_ACCEPT:application/json&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Accept: application/json&#xD;&#xA;Host: localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="0" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\api\GetAllCreditCards" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="58728" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="GET" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="application/json" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
  </serverVariables>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'bb652fab-b087-4bbe-88fd-6dfef0170f82', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.Data.SqlClient.SqlException', N'.Net SqlClient Data Provider', N'Violation of PRIMARY KEY constraint ''PK_BankCreditCard''. Cannot insert duplicate key in object ''dbo.CreditCards''. The duplicate key value is (24242).
The statement has been terminated.', N'', 0, CAST(N'2021-02-26T05:04:21.447' AS DateTime), 6, N'<error
  host="DESKTOP-9HITPSD"
  type="System.Data.SqlClient.SqlException"
  message="Violation of PRIMARY KEY constraint ''PK_BankCreditCard''. Cannot insert duplicate key in object ''dbo.CreditCards''. The duplicate key value is (24242).&#xD;&#xA;The statement has been terminated."
  source=".Net SqlClient Data Provider"
  detail="System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---&gt; System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---&gt; System.Data.SqlClient.SqlException: Violation of PRIMARY KEY constraint ''PK_BankCreditCard''. Cannot insert duplicate key in object ''dbo.CreditCards''. The duplicate key value is (24242).&#xD;&#xA;The statement has been terminated.&#xD;&#xA;   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)&#xD;&#xA;   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)&#xD;&#xA;   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)&#xD;&#xA;   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean&amp; dataReady)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption, Boolean shouldCacheForAlwaysEncrypted)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task&amp; task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task&amp; task, Boolean&amp; usedCache, Boolean asyncWrite, Boolean inRetry)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean&amp; usedCache, Boolean asyncWrite, Boolean inRetry)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()&#xD;&#xA;   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.&lt;&gt;c.&lt;NonQuery&gt;b__4_0(DbCommand t, DbCommandInterceptionContext`1 c)&#xD;&#xA;   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)&#xD;&#xA;   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)&#xD;&#xA;   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()&#xD;&#xA;   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)&#xD;&#xA;   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()&#xD;&#xA;   --- End of inner exception stack trace ---&#xD;&#xA;   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()&#xD;&#xA;   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.&lt;&gt;c.&lt;Update&gt;b__21_0(UpdateTranslator ut)&#xD;&#xA;   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)&#xD;&#xA;   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.&lt;SaveChangesToStore&gt;b__153_0()&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.&lt;&gt;c__DisplayClass148_0.&lt;SaveChangesInternal&gt;b__0()&#xD;&#xA;   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)&#xD;&#xA;   at System.Data.Entity.Internal.InternalContext.SaveChanges()&#xD;&#xA;   --- End of inner exception stack trace ---&#xD;&#xA;   at System.Data.Entity.Internal.InternalContext.SaveChanges()&#xD;&#xA;   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()&#xD;&#xA;   at System.Data.Entity.DbContext.SaveChanges()&#xD;&#xA;   at CreditCard.Repositories.GenericRepository`1.Save() in C:\Users\tin\source\repos\CreditCard\CreditCard\Repositories\GenericRepository.cs:line 54&#xD;&#xA;   at CreditCard.Controllers.CreditCardApiController.StoreCreditCard(CreditCards clientobj) in C:\Users\tin\source\repos\CreditCard\CreditCard\Controllers\CreditCardApiController.cs:line 71"
  time="2021-02-26T05:04:21.4451991Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_CONTENT_LENGTH:92&#xD;&#xA;HTTP_CONTENT_TYPE:application/json; charset=utf-8&#xD;&#xA;HTTP_ACCEPT:application/json&#xD;&#xA;HTTP_EXPECT:100-continue&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Content-Length: 92&#xD;&#xA;Content-Type: application/json; charset=utf-8&#xD;&#xA;Accept: application/json&#xD;&#xA;Expect: 100-continue&#xD;&#xA;Host: localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="92" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="application/json; charset=utf-8" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/api/StoreCreditCard/" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\api\StoreCreditCard\" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="58730" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="POST" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/api/StoreCreditCard/" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/api/StoreCreditCard/" />
    </item>
    <item
      name="HTTP_CONTENT_LENGTH">
      <value
        string="92" />
    </item>
    <item
      name="HTTP_CONTENT_TYPE">
      <value
        string="application/json; charset=utf-8" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="application/json" />
    </item>
    <item
      name="HTTP_EXPECT">
      <value
        string="100-continue" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
  </serverVariables>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'a8df71e1-aff7-4a93-a31c-2605bac904a3', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.InvalidOperationException', N'EntityFramework', N'The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.', N'', 0, CAST(N'2021-02-26T05:04:21.483' AS DateTime), 7, N'<error
  host="DESKTOP-9HITPSD"
  type="System.InvalidOperationException"
  message="The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid."
  source="EntityFramework"
  detail="System.InvalidOperationException: The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper.ErrorHandlingValueReader`1.GetValue(DbDataReader reader, Int32 ordinal)&#xD;&#xA;   at lambda_method(Closure , Shaper )&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Coordinator`1.ReadNextElement(Shaper shaper)&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper`1.SimpleEnumerator.MoveNext()&#xD;&#xA;   at System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()&#xD;&#xA;   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)&#xD;&#xA;   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)&#xD;&#xA;   at CreditCard.Repositories.GenericRepository`1.GetAll() in C:\Users\tin\source\repos\CreditCard\CreditCard\Repositories\GenericRepository.cs:line 26&#xD;&#xA;   at CreditCard.Controllers.CreditCardApiController.GetAllCreditCards() in C:\Users\tin\source\repos\CreditCard\CreditCard\Controllers\CreditCardApiController.cs:line 34"
  time="2021-02-26T05:04:21.4830677Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_ACCEPT:application/json&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Accept: application/json&#xD;&#xA;Host: localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="0" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\api\GetAllCreditCards" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="58731" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="GET" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="application/json" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
  </serverVariables>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'3d1540f0-9e69-4273-9e80-2addee303f74', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.Web.HttpException', N'System.Web.Mvc', N'A public action method ''StoreBankCard'' was not found on controller ''CreditCard.Controllers.ClientController''.', N'', 404, CAST(N'2021-02-26T05:04:23.053' AS DateTime), 8, N'<error
  host="DESKTOP-9HITPSD"
  type="System.Web.HttpException"
  message="A public action method ''StoreBankCard'' was not found on controller ''CreditCard.Controllers.ClientController''."
  source="System.Web.Mvc"
  detail="System.Web.HttpException (0x80004005): A public action method ''StoreBankCard'' was not found on controller ''CreditCard.Controllers.ClientController''.&#xD;&#xA;   at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)&#xD;&#xA;   at System.Web.Mvc.Controller.&lt;&gt;c.&lt;BeginExecuteCore&gt;b__152_1(IAsyncResult asyncResult, ExecuteCoreState innerState)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()&#xD;&#xA;   at System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Controller.&lt;&gt;c.&lt;BeginExecute&gt;b__151_2(IAsyncResult asyncResult, Controller controller)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()&#xD;&#xA;   at System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.MvcHandler.&lt;&gt;c.&lt;BeginProcessRequest&gt;b__20_1(IAsyncResult asyncResult, ProcessRequestState innerState)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()&#xD;&#xA;   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)&#xD;&#xA;   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()&#xD;&#xA;   at System.Web.HttpApplication.ExecuteStepImpl(IExecutionStep step)&#xD;&#xA;   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean&amp; completedSynchronously)"
  time="2021-02-26T05:04:23.0537438Z"
  statusCode="404">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_CONNECTION:close&#xD;&#xA;HTTP_ACCEPT:text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9&#xD;&#xA;HTTP_ACCEPT_ENCODING:gzip, deflate, br&#xD;&#xA;HTTP_ACCEPT_LANGUAGE:en-GB,en;q=0.9,en-US;q=0.8&#xD;&#xA;HTTP_COOKIE:__RequestVerificationToken=TvF_X2vi1f5VptxDa3NPtpUPFSNVxbIRRwHS8zOzPGBNP1aHIp0nuKNE2rkHJKJrvkTR5xaZBh8hc9pxYzukPxjDzX8w0RBTqWv3KkCyQyw1&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;HTTP_USER_AGENT:Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36 Edg/88.0.705.74&#xD;&#xA;HTTP_UPGRADE_INSECURE_REQUESTS:1&#xD;&#xA;HTTP_SEC_FETCH_SITE:none&#xD;&#xA;HTTP_SEC_FETCH_MODE:navigate&#xD;&#xA;HTTP_SEC_FETCH_USER:?1&#xD;&#xA;HTTP_SEC_FETCH_DEST:document&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Connection: close&#xD;&#xA;Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9&#xD;&#xA;Accept-Encoding: gzip, deflate, br&#xD;&#xA;Accept-Language: en-GB,en;q=0.9,en-US;q=0.8&#xD;&#xA;Cookie: __RequestVerificationToken=TvF_X2vi1f5VptxDa3NPtpUPFSNVxbIRRwHS8zOzPGBNP1aHIp0nuKNE2rkHJKJrvkTR5xaZBh8hc9pxYzukPxjDzX8w0RBTqWv3KkCyQyw1&#xD;&#xA;Host: localhost:44308&#xD;&#xA;User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36 Edg/88.0.705.74&#xD;&#xA;upgrade-insecure-requests: 1&#xD;&#xA;sec-fetch-site: none&#xD;&#xA;sec-fetch-mode: navigate&#xD;&#xA;sec-fetch-user: ?1&#xD;&#xA;sec-fetch-dest: document&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="0" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/Client/StoreBankCard" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\Client\StoreBankCard" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="58720" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="GET" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/Client/StoreBankCard" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/Client/StoreBankCard" />
    </item>
    <item
      name="HTTP_CONNECTION">
      <value
        string="close" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9" />
    </item>
    <item
      name="HTTP_ACCEPT_ENCODING">
      <value
        string="gzip, deflate, br" />
    </item>
    <item
      name="HTTP_ACCEPT_LANGUAGE">
      <value
        string="en-GB,en;q=0.9,en-US;q=0.8" />
    </item>
    <item
      name="HTTP_COOKIE">
      <value
        string="__RequestVerificationToken=TvF_X2vi1f5VptxDa3NPtpUPFSNVxbIRRwHS8zOzPGBNP1aHIp0nuKNE2rkHJKJrvkTR5xaZBh8hc9pxYzukPxjDzX8w0RBTqWv3KkCyQyw1" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
    <item
      name="HTTP_USER_AGENT">
      <value
        string="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36 Edg/88.0.705.74" />
    </item>
    <item
      name="HTTP_UPGRADE_INSECURE_REQUESTS">
      <value
        string="1" />
    </item>
    <item
      name="HTTP_SEC_FETCH_SITE">
      <value
        string="none" />
    </item>
    <item
      name="HTTP_SEC_FETCH_MODE">
      <value
        string="navigate" />
    </item>
    <item
      name="HTTP_SEC_FETCH_USER">
      <value
        string="?1" />
    </item>
    <item
      name="HTTP_SEC_FETCH_DEST">
      <value
        string="document" />
    </item>
  </serverVariables>
  <cookies>
    <item
      name="__RequestVerificationToken">
      <value
        string="TvF_X2vi1f5VptxDa3NPtpUPFSNVxbIRRwHS8zOzPGBNP1aHIp0nuKNE2rkHJKJrvkTR5xaZBh8hc9pxYzukPxjDzX8w0RBTqWv3KkCyQyw1" />
    </item>
  </cookies>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'ca8e862f-4994-424d-a390-937f57ff32c3', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.InvalidOperationException', N'EntityFramework', N'The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.', N'', 0, CAST(N'2021-02-26T05:05:02.000' AS DateTime), 9, N'<error
  host="DESKTOP-9HITPSD"
  type="System.InvalidOperationException"
  message="The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid."
  source="EntityFramework"
  detail="System.InvalidOperationException: The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper.ErrorHandlingValueReader`1.GetValue(DbDataReader reader, Int32 ordinal)&#xD;&#xA;   at lambda_method(Closure , Shaper )&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Coordinator`1.ReadNextElement(Shaper shaper)&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper`1.SimpleEnumerator.MoveNext()&#xD;&#xA;   at System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()&#xD;&#xA;   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)&#xD;&#xA;   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)&#xD;&#xA;   at CreditCard.Repositories.GenericRepository`1.GetAll() in C:\Users\tin\source\repos\CreditCard\CreditCard\Repositories\GenericRepository.cs:line 26&#xD;&#xA;   at CreditCard.Controllers.CreditCardApiController.GetAllCreditCards() in C:\Users\tin\source\repos\CreditCard\CreditCard\Controllers\CreditCardApiController.cs:line 34"
  time="2021-02-26T05:05:01.9994742Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_CONNECTION:Keep-Alive&#xD;&#xA;HTTP_ACCEPT:application/json&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Connection: Keep-Alive&#xD;&#xA;Accept: application/json&#xD;&#xA;Host: localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="0" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\api\GetAllCreditCards" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="58739" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="GET" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="HTTP_CONNECTION">
      <value
        string="Keep-Alive" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="application/json" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
  </serverVariables>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'5bec9538-35e2-4857-a229-f09e1623d7d4', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.InvalidOperationException', N'EntityFramework', N'The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.', N'', 0, CAST(N'2021-02-26T05:05:16.733' AS DateTime), 10, N'<error
  host="DESKTOP-9HITPSD"
  type="System.InvalidOperationException"
  message="The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid."
  source="EntityFramework"
  detail="System.InvalidOperationException: The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper.ErrorHandlingValueReader`1.GetValue(DbDataReader reader, Int32 ordinal)&#xD;&#xA;   at lambda_method(Closure , Shaper )&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Coordinator`1.ReadNextElement(Shaper shaper)&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper`1.SimpleEnumerator.MoveNext()&#xD;&#xA;   at System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()&#xD;&#xA;   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)&#xD;&#xA;   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)&#xD;&#xA;   at CreditCard.Repositories.GenericRepository`1.GetAll() in C:\Users\tin\source\repos\CreditCard\CreditCard\Repositories\GenericRepository.cs:line 26&#xD;&#xA;   at CreditCard.Controllers.CreditCardApiController.GetAllCreditCards() in C:\Users\tin\source\repos\CreditCard\CreditCard\Controllers\CreditCardApiController.cs:line 34"
  time="2021-02-26T05:05:16.7338199Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_ACCEPT:application/json&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Accept: application/json&#xD;&#xA;Host: localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="0" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\api\GetAllCreditCards" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="58742" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="GET" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="application/json" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
  </serverVariables>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'f44aad58-1990-4a67-872b-2862ef9e7ecc', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.Data.SqlClient.SqlException', N'.Net SqlClient Data Provider', N'Violation of PRIMARY KEY constraint ''PK_BankCreditCard''. Cannot insert duplicate key in object ''dbo.CreditCards''. The duplicate key value is (1111111111).
The statement has been terminated.', N'', 0, CAST(N'2021-02-26T05:05:27.117' AS DateTime), 11, N'<error
  host="DESKTOP-9HITPSD"
  type="System.Data.SqlClient.SqlException"
  message="Violation of PRIMARY KEY constraint ''PK_BankCreditCard''. Cannot insert duplicate key in object ''dbo.CreditCards''. The duplicate key value is (1111111111).&#xD;&#xA;The statement has been terminated."
  source=".Net SqlClient Data Provider"
  detail="System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---&gt; System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---&gt; System.Data.SqlClient.SqlException: Violation of PRIMARY KEY constraint ''PK_BankCreditCard''. Cannot insert duplicate key in object ''dbo.CreditCards''. The duplicate key value is (1111111111).&#xD;&#xA;The statement has been terminated.&#xD;&#xA;   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)&#xD;&#xA;   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)&#xD;&#xA;   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)&#xD;&#xA;   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean&amp; dataReady)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption, Boolean shouldCacheForAlwaysEncrypted)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task&amp; task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task&amp; task, Boolean&amp; usedCache, Boolean asyncWrite, Boolean inRetry)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean&amp; usedCache, Boolean asyncWrite, Boolean inRetry)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()&#xD;&#xA;   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.&lt;&gt;c.&lt;NonQuery&gt;b__4_0(DbCommand t, DbCommandInterceptionContext`1 c)&#xD;&#xA;   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)&#xD;&#xA;   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)&#xD;&#xA;   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()&#xD;&#xA;   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)&#xD;&#xA;   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()&#xD;&#xA;   --- End of inner exception stack trace ---&#xD;&#xA;   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()&#xD;&#xA;   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.&lt;&gt;c.&lt;Update&gt;b__21_0(UpdateTranslator ut)&#xD;&#xA;   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)&#xD;&#xA;   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.&lt;SaveChangesToStore&gt;b__153_0()&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.&lt;&gt;c__DisplayClass148_0.&lt;SaveChangesInternal&gt;b__0()&#xD;&#xA;   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)&#xD;&#xA;   at System.Data.Entity.Internal.InternalContext.SaveChanges()&#xD;&#xA;   --- End of inner exception stack trace ---&#xD;&#xA;   at System.Data.Entity.Internal.InternalContext.SaveChanges()&#xD;&#xA;   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()&#xD;&#xA;   at System.Data.Entity.DbContext.SaveChanges()&#xD;&#xA;   at CreditCard.Repositories.GenericRepository`1.Save() in C:\Users\tin\source\repos\CreditCard\CreditCard\Repositories\GenericRepository.cs:line 54&#xD;&#xA;   at CreditCard.Controllers.CreditCardApiController.StoreCreditCard(CreditCards clientobj) in C:\Users\tin\source\repos\CreditCard\CreditCard\Controllers\CreditCardApiController.cs:line 71"
  time="2021-02-26T05:05:27.1168265Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_CONTENT_LENGTH:95&#xD;&#xA;HTTP_CONTENT_TYPE:application/json; charset=utf-8&#xD;&#xA;HTTP_ACCEPT:application/json&#xD;&#xA;HTTP_EXPECT:100-continue&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Content-Length: 95&#xD;&#xA;Content-Type: application/json; charset=utf-8&#xD;&#xA;Accept: application/json&#xD;&#xA;Expect: 100-continue&#xD;&#xA;Host: localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="95" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="application/json; charset=utf-8" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/api/StoreCreditCard/" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\api\StoreCreditCard\" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="58743" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="POST" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/api/StoreCreditCard/" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/api/StoreCreditCard/" />
    </item>
    <item
      name="HTTP_CONTENT_LENGTH">
      <value
        string="95" />
    </item>
    <item
      name="HTTP_CONTENT_TYPE">
      <value
        string="application/json; charset=utf-8" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="application/json" />
    </item>
    <item
      name="HTTP_EXPECT">
      <value
        string="100-continue" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
  </serverVariables>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'09050257-33b1-45bd-8fb4-df12093a0172', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.InvalidOperationException', N'EntityFramework', N'The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.', N'', 0, CAST(N'2021-02-26T05:05:27.160' AS DateTime), 12, N'<error
  host="DESKTOP-9HITPSD"
  type="System.InvalidOperationException"
  message="The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid."
  source="EntityFramework"
  detail="System.InvalidOperationException: The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper.ErrorHandlingValueReader`1.GetValue(DbDataReader reader, Int32 ordinal)&#xD;&#xA;   at lambda_method(Closure , Shaper )&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Coordinator`1.ReadNextElement(Shaper shaper)&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper`1.SimpleEnumerator.MoveNext()&#xD;&#xA;   at System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()&#xD;&#xA;   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)&#xD;&#xA;   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)&#xD;&#xA;   at CreditCard.Repositories.GenericRepository`1.GetAll() in C:\Users\tin\source\repos\CreditCard\CreditCard\Repositories\GenericRepository.cs:line 26&#xD;&#xA;   at CreditCard.Controllers.CreditCardApiController.GetAllCreditCards() in C:\Users\tin\source\repos\CreditCard\CreditCard\Controllers\CreditCardApiController.cs:line 34"
  time="2021-02-26T05:05:27.1585495Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_ACCEPT:application/json&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Accept: application/json&#xD;&#xA;Host: localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="0" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\api\GetAllCreditCards" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="58745" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="GET" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="application/json" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
  </serverVariables>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'cf9b7865-113d-419a-b0c9-6392d6551fc2', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.Web.HttpException', N'System.Web.Mvc', N'A public action method ''StoreBankCard'' was not found on controller ''CreditCard.Controllers.ClientController''.', N'', 404, CAST(N'2021-02-26T05:05:29.580' AS DateTime), 13, N'<error
  host="DESKTOP-9HITPSD"
  type="System.Web.HttpException"
  message="A public action method ''StoreBankCard'' was not found on controller ''CreditCard.Controllers.ClientController''."
  source="System.Web.Mvc"
  detail="System.Web.HttpException (0x80004005): A public action method ''StoreBankCard'' was not found on controller ''CreditCard.Controllers.ClientController''.&#xD;&#xA;   at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)&#xD;&#xA;   at System.Web.Mvc.Controller.&lt;&gt;c.&lt;BeginExecuteCore&gt;b__152_1(IAsyncResult asyncResult, ExecuteCoreState innerState)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()&#xD;&#xA;   at System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Controller.&lt;&gt;c.&lt;BeginExecute&gt;b__151_2(IAsyncResult asyncResult, Controller controller)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()&#xD;&#xA;   at System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.MvcHandler.&lt;&gt;c.&lt;BeginProcessRequest&gt;b__20_1(IAsyncResult asyncResult, ProcessRequestState innerState)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()&#xD;&#xA;   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)&#xD;&#xA;   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()&#xD;&#xA;   at System.Web.HttpApplication.ExecuteStepImpl(IExecutionStep step)&#xD;&#xA;   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean&amp; completedSynchronously)"
  time="2021-02-26T05:05:29.5809763Z"
  statusCode="404">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_CONNECTION:close&#xD;&#xA;HTTP_ACCEPT:text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9&#xD;&#xA;HTTP_ACCEPT_ENCODING:gzip, deflate, br&#xD;&#xA;HTTP_ACCEPT_LANGUAGE:en-GB,en;q=0.9,en-US;q=0.8&#xD;&#xA;HTTP_COOKIE:__RequestVerificationToken=q2YNP5uCaxDWLsaiSRWfHnfT81fcizMV2n9XyoTXm4LKx28g2B6Ho9RGKsUsZ4RYhJBTUXrukxF5nhRiFk3XUHxUAzRTbC02rFNKNzGNh9A1&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;HTTP_USER_AGENT:Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36 Edg/88.0.705.74&#xD;&#xA;HTTP_UPGRADE_INSECURE_REQUESTS:1&#xD;&#xA;HTTP_SEC_FETCH_SITE:none&#xD;&#xA;HTTP_SEC_FETCH_MODE:navigate&#xD;&#xA;HTTP_SEC_FETCH_USER:?1&#xD;&#xA;HTTP_SEC_FETCH_DEST:document&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Connection: close&#xD;&#xA;Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9&#xD;&#xA;Accept-Encoding: gzip, deflate, br&#xD;&#xA;Accept-Language: en-GB,en;q=0.9,en-US;q=0.8&#xD;&#xA;Cookie: __RequestVerificationToken=q2YNP5uCaxDWLsaiSRWfHnfT81fcizMV2n9XyoTXm4LKx28g2B6Ho9RGKsUsZ4RYhJBTUXrukxF5nhRiFk3XUHxUAzRTbC02rFNKNzGNh9A1&#xD;&#xA;Host: localhost:44308&#xD;&#xA;User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36 Edg/88.0.705.74&#xD;&#xA;upgrade-insecure-requests: 1&#xD;&#xA;sec-fetch-site: none&#xD;&#xA;sec-fetch-mode: navigate&#xD;&#xA;sec-fetch-user: ?1&#xD;&#xA;sec-fetch-dest: document&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="0" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/Client/StoreBankCard" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\Client\StoreBankCard" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="58737" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="GET" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/Client/StoreBankCard" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/Client/StoreBankCard" />
    </item>
    <item
      name="HTTP_CONNECTION">
      <value
        string="close" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9" />
    </item>
    <item
      name="HTTP_ACCEPT_ENCODING">
      <value
        string="gzip, deflate, br" />
    </item>
    <item
      name="HTTP_ACCEPT_LANGUAGE">
      <value
        string="en-GB,en;q=0.9,en-US;q=0.8" />
    </item>
    <item
      name="HTTP_COOKIE">
      <value
        string="__RequestVerificationToken=q2YNP5uCaxDWLsaiSRWfHnfT81fcizMV2n9XyoTXm4LKx28g2B6Ho9RGKsUsZ4RYhJBTUXrukxF5nhRiFk3XUHxUAzRTbC02rFNKNzGNh9A1" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
    <item
      name="HTTP_USER_AGENT">
      <value
        string="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36 Edg/88.0.705.74" />
    </item>
    <item
      name="HTTP_UPGRADE_INSECURE_REQUESTS">
      <value
        string="1" />
    </item>
    <item
      name="HTTP_SEC_FETCH_SITE">
      <value
        string="none" />
    </item>
    <item
      name="HTTP_SEC_FETCH_MODE">
      <value
        string="navigate" />
    </item>
    <item
      name="HTTP_SEC_FETCH_USER">
      <value
        string="?1" />
    </item>
    <item
      name="HTTP_SEC_FETCH_DEST">
      <value
        string="document" />
    </item>
  </serverVariables>
  <cookies>
    <item
      name="__RequestVerificationToken">
      <value
        string="q2YNP5uCaxDWLsaiSRWfHnfT81fcizMV2n9XyoTXm4LKx28g2B6Ho9RGKsUsZ4RYhJBTUXrukxF5nhRiFk3XUHxUAzRTbC02rFNKNzGNh9A1" />
    </item>
  </cookies>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'b080cbba-9b5c-494d-9f8c-9d216ddf2a0c', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.InvalidOperationException', N'EntityFramework', N'The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.', N'', 0, CAST(N'2021-02-26T05:06:00.923' AS DateTime), 14, N'<error
  host="DESKTOP-9HITPSD"
  type="System.InvalidOperationException"
  message="The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid."
  source="EntityFramework"
  detail="System.InvalidOperationException: The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper.ErrorHandlingValueReader`1.GetValue(DbDataReader reader, Int32 ordinal)&#xD;&#xA;   at lambda_method(Closure , Shaper )&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Coordinator`1.ReadNextElement(Shaper shaper)&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper`1.SimpleEnumerator.MoveNext()&#xD;&#xA;   at System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()&#xD;&#xA;   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)&#xD;&#xA;   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)&#xD;&#xA;   at CreditCard.Repositories.GenericRepository`1.GetAll() in C:\Users\tin\source\repos\CreditCard\CreditCard\Repositories\GenericRepository.cs:line 26&#xD;&#xA;   at CreditCard.Controllers.CreditCardApiController.GetAllCreditCards() in C:\Users\tin\source\repos\CreditCard\CreditCard\Controllers\CreditCardApiController.cs:line 34"
  time="2021-02-26T05:06:00.9228742Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_CONNECTION:Keep-Alive&#xD;&#xA;HTTP_ACCEPT:application/json&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Connection: Keep-Alive&#xD;&#xA;Accept: application/json&#xD;&#xA;Host: localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="0" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\api\GetAllCreditCards" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="58754" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="GET" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="HTTP_CONNECTION">
      <value
        string="Keep-Alive" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="application/json" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
  </serverVariables>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'43d62e17-799f-479f-a4f3-6b3d72418870', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.InvalidOperationException', N'EntityFramework', N'The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.', N'', 0, CAST(N'2021-02-26T05:07:39.713' AS DateTime), 15, N'<error
  host="DESKTOP-9HITPSD"
  type="System.InvalidOperationException"
  message="The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid."
  source="EntityFramework"
  detail="System.InvalidOperationException: The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper.ErrorHandlingValueReader`1.GetValue(DbDataReader reader, Int32 ordinal)&#xD;&#xA;   at lambda_method(Closure , Shaper )&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Coordinator`1.ReadNextElement(Shaper shaper)&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper`1.SimpleEnumerator.MoveNext()&#xD;&#xA;   at System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()&#xD;&#xA;   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)&#xD;&#xA;   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)&#xD;&#xA;   at CreditCard.Repositories.GenericRepository`1.GetAll() in C:\Users\tin\source\repos\CreditCard\CreditCard\Repositories\GenericRepository.cs:line 26&#xD;&#xA;   at CreditCard.Controllers.CreditCardApiController.GetAllCreditCards() in C:\Users\tin\source\repos\CreditCard\CreditCard\Controllers\CreditCardApiController.cs:line 34"
  time="2021-02-26T05:07:39.7143547Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_ACCEPT:application/json&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Accept: application/json&#xD;&#xA;Host: localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="0" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\api\GetAllCreditCards" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="58764" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="GET" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="application/json" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
  </serverVariables>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'6ff93216-b701-431c-9e25-2d76b273993e', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.InvalidOperationException', N'EntityFramework', N'The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.', N'', 0, CAST(N'2021-02-26T05:08:09.210' AS DateTime), 16, N'<error
  host="DESKTOP-9HITPSD"
  type="System.InvalidOperationException"
  message="The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid."
  source="EntityFramework"
  detail="System.InvalidOperationException: The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper.ErrorHandlingValueReader`1.GetValue(DbDataReader reader, Int32 ordinal)&#xD;&#xA;   at lambda_method(Closure , Shaper )&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Coordinator`1.ReadNextElement(Shaper shaper)&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper`1.SimpleEnumerator.MoveNext()&#xD;&#xA;   at System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()&#xD;&#xA;   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)&#xD;&#xA;   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)&#xD;&#xA;   at CreditCard.Repositories.GenericRepository`1.GetAll() in C:\Users\tin\source\repos\CreditCard\CreditCard\Repositories\GenericRepository.cs:line 26&#xD;&#xA;   at CreditCard.Controllers.CreditCardApiController.GetAllCreditCards() in C:\Users\tin\source\repos\CreditCard\CreditCard\Controllers\CreditCardApiController.cs:line 34"
  time="2021-02-26T05:08:09.2105198Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_CONNECTION:Keep-Alive&#xD;&#xA;HTTP_ACCEPT:application/json&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Connection: Keep-Alive&#xD;&#xA;Accept: application/json&#xD;&#xA;Host: localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="0" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\api\GetAllCreditCards" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="58780" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="GET" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="HTTP_CONNECTION">
      <value
        string="Keep-Alive" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="application/json" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
  </serverVariables>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'9399b5e9-1064-4701-a9ab-7981d2d5b84a', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.InvalidOperationException', N'EntityFramework', N'The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.', N'', 0, CAST(N'2021-02-26T05:08:45.347' AS DateTime), 17, N'<error
  host="DESKTOP-9HITPSD"
  type="System.InvalidOperationException"
  message="The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid."
  source="EntityFramework"
  detail="System.InvalidOperationException: The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper.ErrorHandlingValueReader`1.GetValue(DbDataReader reader, Int32 ordinal)&#xD;&#xA;   at lambda_method(Closure , Shaper )&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Coordinator`1.ReadNextElement(Shaper shaper)&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper`1.SimpleEnumerator.MoveNext()&#xD;&#xA;   at System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()&#xD;&#xA;   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)&#xD;&#xA;   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)&#xD;&#xA;   at CreditCard.Repositories.GenericRepository`1.GetAll() in C:\Users\tin\source\repos\CreditCard\CreditCard\Repositories\GenericRepository.cs:line 26&#xD;&#xA;   at CreditCard.Controllers.CreditCardApiController.GetAllCreditCards() in C:\Users\tin\source\repos\CreditCard\CreditCard\Controllers\CreditCardApiController.cs:line 34"
  time="2021-02-26T05:08:45.3469314Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_CONNECTION:Keep-Alive&#xD;&#xA;HTTP_ACCEPT:application/json&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Connection: Keep-Alive&#xD;&#xA;Accept: application/json&#xD;&#xA;Host: localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="0" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\api\GetAllCreditCards" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="58789" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="GET" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="HTTP_CONNECTION">
      <value
        string="Keep-Alive" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="application/json" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
  </serverVariables>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'1d3a1d94-1661-4c2b-9c7e-ef4728732379', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.InvalidOperationException', N'EntityFramework', N'The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.', N'', 0, CAST(N'2021-02-26T05:09:33.780' AS DateTime), 18, N'<error
  host="DESKTOP-9HITPSD"
  type="System.InvalidOperationException"
  message="The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid."
  source="EntityFramework"
  detail="System.InvalidOperationException: The specified cast from a materialized ''System.Int64'' type to the ''System.Int32'' type is not valid.&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper.ErrorHandlingValueReader`1.GetValue(DbDataReader reader, Int32 ordinal)&#xD;&#xA;   at lambda_method(Closure , Shaper )&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Coordinator`1.ReadNextElement(Shaper shaper)&#xD;&#xA;   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper`1.SimpleEnumerator.MoveNext()&#xD;&#xA;   at System.Data.Entity.Internal.LazyEnumerator`1.MoveNext()&#xD;&#xA;   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)&#xD;&#xA;   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)&#xD;&#xA;   at CreditCard.Repositories.GenericRepository`1.GetAll() in C:\Users\tin\source\repos\CreditCard\CreditCard\Repositories\GenericRepository.cs:line 26&#xD;&#xA;   at CreditCard.Controllers.CreditCardApiController.GetAllCreditCards() in C:\Users\tin\source\repos\CreditCard\CreditCard\Controllers\CreditCardApiController.cs:line 34"
  time="2021-02-26T05:09:33.7816448Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_CONNECTION:Keep-Alive&#xD;&#xA;HTTP_ACCEPT:application/json&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Connection: Keep-Alive&#xD;&#xA;Accept: application/json&#xD;&#xA;Host: localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="0" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\api\GetAllCreditCards" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="58808" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="GET" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/api/GetAllCreditCards" />
    </item>
    <item
      name="HTTP_CONNECTION">
      <value
        string="Keep-Alive" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="application/json" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
  </serverVariables>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'7faebe5d-31e6-4ea4-a212-de838823a938', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.Web.HttpException', N'System.Web.Mvc', N'A public action method ''StoreBankCard'' was not found on controller ''CreditCard.Controllers.ClientController''.', N'', 404, CAST(N'2021-02-26T05:26:17.083' AS DateTime), 19, N'<error
  host="DESKTOP-9HITPSD"
  type="System.Web.HttpException"
  message="A public action method ''StoreBankCard'' was not found on controller ''CreditCard.Controllers.ClientController''."
  source="System.Web.Mvc"
  detail="System.Web.HttpException (0x80004005): A public action method ''StoreBankCard'' was not found on controller ''CreditCard.Controllers.ClientController''.&#xD;&#xA;   at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)&#xD;&#xA;   at System.Web.Mvc.Controller.&lt;&gt;c.&lt;BeginExecuteCore&gt;b__152_1(IAsyncResult asyncResult, ExecuteCoreState innerState)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()&#xD;&#xA;   at System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Controller.&lt;&gt;c.&lt;BeginExecute&gt;b__151_2(IAsyncResult asyncResult, Controller controller)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()&#xD;&#xA;   at System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.MvcHandler.&lt;&gt;c.&lt;BeginProcessRequest&gt;b__20_1(IAsyncResult asyncResult, ProcessRequestState innerState)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()&#xD;&#xA;   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)&#xD;&#xA;   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()&#xD;&#xA;   at System.Web.HttpApplication.ExecuteStepImpl(IExecutionStep step)&#xD;&#xA;   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean&amp; completedSynchronously)"
  time="2021-02-26T05:26:17.0819163Z"
  statusCode="404">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_CONNECTION:close&#xD;&#xA;HTTP_ACCEPT:text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9&#xD;&#xA;HTTP_ACCEPT_ENCODING:gzip, deflate, br&#xD;&#xA;HTTP_ACCEPT_LANGUAGE:en-GB,en;q=0.9,en-US;q=0.8&#xD;&#xA;HTTP_COOKIE:__RequestVerificationToken=hPwycjyUvrj1MA7o35aPKxZ9tfNt99tcnpnFhILFxNaDPy1ejY6xg4WNzjU1eyS1DKTfkkQ1U2OXHn5i52XMfe4PMMszd2Rt4ol3EokYY7E1&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;HTTP_USER_AGENT:Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36 Edg/88.0.705.74&#xD;&#xA;HTTP_UPGRADE_INSECURE_REQUESTS:1&#xD;&#xA;HTTP_SEC_FETCH_SITE:none&#xD;&#xA;HTTP_SEC_FETCH_MODE:navigate&#xD;&#xA;HTTP_SEC_FETCH_USER:?1&#xD;&#xA;HTTP_SEC_FETCH_DEST:document&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Connection: close&#xD;&#xA;Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9&#xD;&#xA;Accept-Encoding: gzip, deflate, br&#xD;&#xA;Accept-Language: en-GB,en;q=0.9,en-US;q=0.8&#xD;&#xA;Cookie: __RequestVerificationToken=hPwycjyUvrj1MA7o35aPKxZ9tfNt99tcnpnFhILFxNaDPy1ejY6xg4WNzjU1eyS1DKTfkkQ1U2OXHn5i52XMfe4PMMszd2Rt4ol3EokYY7E1&#xD;&#xA;Host: localhost:44308&#xD;&#xA;User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36 Edg/88.0.705.74&#xD;&#xA;upgrade-insecure-requests: 1&#xD;&#xA;sec-fetch-site: none&#xD;&#xA;sec-fetch-mode: navigate&#xD;&#xA;sec-fetch-user: ?1&#xD;&#xA;sec-fetch-dest: document&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="0" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/Client/StoreBankCard" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\Client\StoreBankCard" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="59008" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="GET" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/Client/StoreBankCard" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/Client/StoreBankCard" />
    </item>
    <item
      name="HTTP_CONNECTION">
      <value
        string="close" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9" />
    </item>
    <item
      name="HTTP_ACCEPT_ENCODING">
      <value
        string="gzip, deflate, br" />
    </item>
    <item
      name="HTTP_ACCEPT_LANGUAGE">
      <value
        string="en-GB,en;q=0.9,en-US;q=0.8" />
    </item>
    <item
      name="HTTP_COOKIE">
      <value
        string="__RequestVerificationToken=hPwycjyUvrj1MA7o35aPKxZ9tfNt99tcnpnFhILFxNaDPy1ejY6xg4WNzjU1eyS1DKTfkkQ1U2OXHn5i52XMfe4PMMszd2Rt4ol3EokYY7E1" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
    <item
      name="HTTP_USER_AGENT">
      <value
        string="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36 Edg/88.0.705.74" />
    </item>
    <item
      name="HTTP_UPGRADE_INSECURE_REQUESTS">
      <value
        string="1" />
    </item>
    <item
      name="HTTP_SEC_FETCH_SITE">
      <value
        string="none" />
    </item>
    <item
      name="HTTP_SEC_FETCH_MODE">
      <value
        string="navigate" />
    </item>
    <item
      name="HTTP_SEC_FETCH_USER">
      <value
        string="?1" />
    </item>
    <item
      name="HTTP_SEC_FETCH_DEST">
      <value
        string="document" />
    </item>
  </serverVariables>
  <cookies>
    <item
      name="__RequestVerificationToken">
      <value
        string="hPwycjyUvrj1MA7o35aPKxZ9tfNt99tcnpnFhILFxNaDPy1ejY6xg4WNzjU1eyS1DKTfkkQ1U2OXHn5i52XMfe4PMMszd2Rt4ol3EokYY7E1" />
    </item>
  </cookies>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'89611e2c-cfe5-40bb-8e21-9205486646a2', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.Data.SqlClient.SqlException', N'.Net SqlClient Data Provider', N'Cannot insert the value NULL into column ''Name'', table ''Interview.dbo.CreditCards''; column does not allow nulls. INSERT fails.
The statement has been terminated.', N'', 0, CAST(N'2021-02-26T05:28:45.963' AS DateTime), 20, N'<error
  host="DESKTOP-9HITPSD"
  type="System.Data.SqlClient.SqlException"
  message="Cannot insert the value NULL into column ''Name'', table ''Interview.dbo.CreditCards''; column does not allow nulls. INSERT fails.&#xD;&#xA;The statement has been terminated."
  source=".Net SqlClient Data Provider"
  detail="System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---&gt; System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---&gt; System.Data.SqlClient.SqlException: Cannot insert the value NULL into column ''Name'', table ''Interview.dbo.CreditCards''; column does not allow nulls. INSERT fails.&#xD;&#xA;The statement has been terminated.&#xD;&#xA;   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)&#xD;&#xA;   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)&#xD;&#xA;   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)&#xD;&#xA;   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean&amp; dataReady)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption, Boolean shouldCacheForAlwaysEncrypted)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task&amp; task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task&amp; task, Boolean&amp; usedCache, Boolean asyncWrite, Boolean inRetry)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean&amp; usedCache, Boolean asyncWrite, Boolean inRetry)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()&#xD;&#xA;   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.&lt;&gt;c.&lt;NonQuery&gt;b__4_0(DbCommand t, DbCommandInterceptionContext`1 c)&#xD;&#xA;   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)&#xD;&#xA;   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)&#xD;&#xA;   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()&#xD;&#xA;   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)&#xD;&#xA;   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()&#xD;&#xA;   --- End of inner exception stack trace ---&#xD;&#xA;   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()&#xD;&#xA;   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.&lt;&gt;c.&lt;Update&gt;b__21_0(UpdateTranslator ut)&#xD;&#xA;   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)&#xD;&#xA;   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.&lt;SaveChangesToStore&gt;b__153_0()&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.&lt;&gt;c__DisplayClass148_0.&lt;SaveChangesInternal&gt;b__0()&#xD;&#xA;   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)&#xD;&#xA;   at System.Data.Entity.Internal.InternalContext.SaveChanges()&#xD;&#xA;   --- End of inner exception stack trace ---&#xD;&#xA;   at System.Data.Entity.Internal.InternalContext.SaveChanges()&#xD;&#xA;   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()&#xD;&#xA;   at System.Data.Entity.DbContext.SaveChanges()&#xD;&#xA;   at CreditCard.Repositories.GenericRepository`1.Save() in C:\Users\tin\source\repos\CreditCard\CreditCard\Repositories\GenericRepository.cs:line 54&#xD;&#xA;   at CreditCard.Controllers.CreditCardApiController.StoreCreditCard(CreditCards clientobj) in C:\Users\tin\source\repos\CreditCard\CreditCard\Controllers\CreditCardApiController.cs:line 71"
  time="2021-02-26T05:28:45.9647535Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_CONTENT_LENGTH:83&#xD;&#xA;HTTP_CONTENT_TYPE:application/json; charset=utf-8&#xD;&#xA;HTTP_ACCEPT:application/json&#xD;&#xA;HTTP_EXPECT:100-continue&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Content-Length: 83&#xD;&#xA;Content-Type: application/json; charset=utf-8&#xD;&#xA;Accept: application/json&#xD;&#xA;Expect: 100-continue&#xD;&#xA;Host: localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="83" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="application/json; charset=utf-8" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/api/StoreCreditCard/" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\api\StoreCreditCard\" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="59051" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="POST" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/api/StoreCreditCard/" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/api/StoreCreditCard/" />
    </item>
    <item
      name="HTTP_CONTENT_LENGTH">
      <value
        string="83" />
    </item>
    <item
      name="HTTP_CONTENT_TYPE">
      <value
        string="application/json; charset=utf-8" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="application/json" />
    </item>
    <item
      name="HTTP_EXPECT">
      <value
        string="100-continue" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
  </serverVariables>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'9765d716-5f17-470d-8a4c-48f5393aefd4', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.Data.SqlClient.SqlException', N'.Net SqlClient Data Provider', N'Cannot insert the value NULL into column ''Name'', table ''Interview.dbo.CreditCards''; column does not allow nulls. INSERT fails.
The statement has been terminated.', N'', 0, CAST(N'2021-02-26T05:29:48.397' AS DateTime), 21, N'<error
  host="DESKTOP-9HITPSD"
  type="System.Data.SqlClient.SqlException"
  message="Cannot insert the value NULL into column ''Name'', table ''Interview.dbo.CreditCards''; column does not allow nulls. INSERT fails.&#xD;&#xA;The statement has been terminated."
  source=".Net SqlClient Data Provider"
  detail="System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---&gt; System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---&gt; System.Data.SqlClient.SqlException: Cannot insert the value NULL into column ''Name'', table ''Interview.dbo.CreditCards''; column does not allow nulls. INSERT fails.&#xD;&#xA;The statement has been terminated.&#xD;&#xA;   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)&#xD;&#xA;   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)&#xD;&#xA;   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)&#xD;&#xA;   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean&amp; dataReady)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption, Boolean shouldCacheForAlwaysEncrypted)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task&amp; task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task&amp; task, Boolean&amp; usedCache, Boolean asyncWrite, Boolean inRetry)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean&amp; usedCache, Boolean asyncWrite, Boolean inRetry)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()&#xD;&#xA;   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.&lt;&gt;c.&lt;NonQuery&gt;b__4_0(DbCommand t, DbCommandInterceptionContext`1 c)&#xD;&#xA;   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)&#xD;&#xA;   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)&#xD;&#xA;   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()&#xD;&#xA;   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)&#xD;&#xA;   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()&#xD;&#xA;   --- End of inner exception stack trace ---&#xD;&#xA;   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()&#xD;&#xA;   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.&lt;&gt;c.&lt;Update&gt;b__21_0(UpdateTranslator ut)&#xD;&#xA;   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)&#xD;&#xA;   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.&lt;SaveChangesToStore&gt;b__153_0()&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.&lt;&gt;c__DisplayClass148_0.&lt;SaveChangesInternal&gt;b__0()&#xD;&#xA;   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)&#xD;&#xA;   at System.Data.Entity.Internal.InternalContext.SaveChanges()&#xD;&#xA;   --- End of inner exception stack trace ---&#xD;&#xA;   at System.Data.Entity.Internal.InternalContext.SaveChanges()&#xD;&#xA;   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()&#xD;&#xA;   at System.Data.Entity.DbContext.SaveChanges()&#xD;&#xA;   at CreditCard.Repositories.GenericRepository`1.Save() in C:\Users\tin\source\repos\CreditCard\CreditCard\Repositories\GenericRepository.cs:line 54&#xD;&#xA;   at CreditCard.Controllers.CreditCardApiController.StoreCreditCard(CreditCards clientobj) in C:\Users\tin\source\repos\CreditCard\CreditCard\Controllers\CreditCardApiController.cs:line 71"
  time="2021-02-26T05:29:48.3964896Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_CONTENT_LENGTH:83&#xD;&#xA;HTTP_CONTENT_TYPE:application/json; charset=utf-8&#xD;&#xA;HTTP_ACCEPT:application/json&#xD;&#xA;HTTP_EXPECT:100-continue&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Content-Length: 83&#xD;&#xA;Content-Type: application/json; charset=utf-8&#xD;&#xA;Accept: application/json&#xD;&#xA;Expect: 100-continue&#xD;&#xA;Host: localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="83" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="application/json; charset=utf-8" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/api/StoreCreditCard/" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\api\StoreCreditCard\" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="59088" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="POST" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/api/StoreCreditCard/" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/api/StoreCreditCard/" />
    </item>
    <item
      name="HTTP_CONTENT_LENGTH">
      <value
        string="83" />
    </item>
    <item
      name="HTTP_CONTENT_TYPE">
      <value
        string="application/json; charset=utf-8" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="application/json" />
    </item>
    <item
      name="HTTP_EXPECT">
      <value
        string="100-continue" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
  </serverVariables>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'5c23a729-0dfc-4c81-a35d-9cf60982fc5e', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.Data.SqlClient.SqlException', N'.Net SqlClient Data Provider', N'Cannot insert the value NULL into column ''Name'', table ''Interview.dbo.CreditCards''; column does not allow nulls. INSERT fails.
The statement has been terminated.', N'', 0, CAST(N'2021-02-26T05:31:57.550' AS DateTime), 22, N'<error
  host="DESKTOP-9HITPSD"
  type="System.Data.SqlClient.SqlException"
  message="Cannot insert the value NULL into column ''Name'', table ''Interview.dbo.CreditCards''; column does not allow nulls. INSERT fails.&#xD;&#xA;The statement has been terminated."
  source=".Net SqlClient Data Provider"
  detail="System.Data.Entity.Infrastructure.DbUpdateException: An error occurred while updating the entries. See the inner exception for details. ---&gt; System.Data.Entity.Core.UpdateException: An error occurred while updating the entries. See the inner exception for details. ---&gt; System.Data.SqlClient.SqlException: Cannot insert the value NULL into column ''Name'', table ''Interview.dbo.CreditCards''; column does not allow nulls. INSERT fails.&#xD;&#xA;The statement has been terminated.&#xD;&#xA;   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)&#xD;&#xA;   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)&#xD;&#xA;   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)&#xD;&#xA;   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean&amp; dataReady)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption, Boolean shouldCacheForAlwaysEncrypted)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task&amp; task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task&amp; task, Boolean&amp; usedCache, Boolean asyncWrite, Boolean inRetry)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean&amp; usedCache, Boolean asyncWrite, Boolean inRetry)&#xD;&#xA;   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()&#xD;&#xA;   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.&lt;&gt;c.&lt;NonQuery&gt;b__4_0(DbCommand t, DbCommandInterceptionContext`1 c)&#xD;&#xA;   at System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext,TResult](TTarget target, Func`3 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)&#xD;&#xA;   at System.Data.Entity.Infrastructure.Interception.DbCommandDispatcher.NonQuery(DbCommand command, DbCommandInterceptionContext interceptionContext)&#xD;&#xA;   at System.Data.Entity.Internal.InterceptableDbCommand.ExecuteNonQuery()&#xD;&#xA;   at System.Data.Entity.Core.Mapping.Update.Internal.DynamicUpdateCommand.Execute(Dictionary`2 identifierValues, List`1 generatedValues)&#xD;&#xA;   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()&#xD;&#xA;   --- End of inner exception stack trace ---&#xD;&#xA;   at System.Data.Entity.Core.Mapping.Update.Internal.UpdateTranslator.Update()&#xD;&#xA;   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.&lt;&gt;c.&lt;Update&gt;b__21_0(UpdateTranslator ut)&#xD;&#xA;   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update[T](T noChangesResult, Func`2 updateFunction)&#xD;&#xA;   at System.Data.Entity.Core.EntityClient.Internal.EntityAdapter.Update()&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.&lt;SaveChangesToStore&gt;b__153_0()&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesToStore(SaveOptions options, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.&lt;&gt;c__DisplayClass148_0.&lt;SaveChangesInternal&gt;b__0()&#xD;&#xA;   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.SaveChangesInternal(SaveOptions options, Boolean executeInExistingTransaction)&#xD;&#xA;   at System.Data.Entity.Core.Objects.ObjectContext.SaveChanges(SaveOptions options)&#xD;&#xA;   at System.Data.Entity.Internal.InternalContext.SaveChanges()&#xD;&#xA;   --- End of inner exception stack trace ---&#xD;&#xA;   at System.Data.Entity.Internal.InternalContext.SaveChanges()&#xD;&#xA;   at System.Data.Entity.Internal.LazyInternalContext.SaveChanges()&#xD;&#xA;   at System.Data.Entity.DbContext.SaveChanges()&#xD;&#xA;   at CreditCard.Repositories.GenericRepository`1.Save() in C:\Users\tin\source\repos\CreditCard\CreditCard\Repositories\GenericRepository.cs:line 54&#xD;&#xA;   at CreditCard.Controllers.CreditCardApiController.StoreCreditCard(CreditCards clientobj) in C:\Users\tin\source\repos\CreditCard\CreditCard\Controllers\CreditCardApiController.cs:line 71"
  time="2021-02-26T05:31:57.5500253Z">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_CONTENT_LENGTH:83&#xD;&#xA;HTTP_CONTENT_TYPE:application/json; charset=utf-8&#xD;&#xA;HTTP_ACCEPT:application/json&#xD;&#xA;HTTP_EXPECT:100-continue&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Content-Length: 83&#xD;&#xA;Content-Type: application/json; charset=utf-8&#xD;&#xA;Accept: application/json&#xD;&#xA;Expect: 100-continue&#xD;&#xA;Host: localhost:44308&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="83" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="application/json; charset=utf-8" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/api/StoreCreditCard/" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\api\StoreCreditCard\" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="59165" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="POST" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/api/StoreCreditCard/" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/api/StoreCreditCard/" />
    </item>
    <item
      name="HTTP_CONTENT_LENGTH">
      <value
        string="83" />
    </item>
    <item
      name="HTTP_CONTENT_TYPE">
      <value
        string="application/json; charset=utf-8" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="application/json" />
    </item>
    <item
      name="HTTP_EXPECT">
      <value
        string="100-continue" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
  </serverVariables>
</error>')
INSERT [dbo].[ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source], [Message], [User], [StatusCode], [TimeUtc], [Sequence], [AllXml]) VALUES (N'd022dccf-722b-409a-9e7f-1fbc3569e9e6', N'/LM/W3SVC/2/ROOT', N'DESKTOP-9HITPSD', N'System.Web.HttpException', N'System.Web.Mvc', N'A public action method ''StoreBankCard'' was not found on controller ''CreditCard.Controllers.ClientController''.', N'', 404, CAST(N'2021-02-26T05:32:10.900' AS DateTime), 23, N'<error
  host="DESKTOP-9HITPSD"
  type="System.Web.HttpException"
  message="A public action method ''StoreBankCard'' was not found on controller ''CreditCard.Controllers.ClientController''."
  source="System.Web.Mvc"
  detail="System.Web.HttpException (0x80004005): A public action method ''StoreBankCard'' was not found on controller ''CreditCard.Controllers.ClientController''.&#xD;&#xA;   at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)&#xD;&#xA;   at System.Web.Mvc.Controller.&lt;&gt;c.&lt;BeginExecuteCore&gt;b__152_1(IAsyncResult asyncResult, ExecuteCoreState innerState)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()&#xD;&#xA;   at System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Controller.&lt;&gt;c.&lt;BeginExecute&gt;b__151_2(IAsyncResult asyncResult, Controller controller)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()&#xD;&#xA;   at System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.MvcHandler.&lt;&gt;c.&lt;BeginProcessRequest&gt;b__20_1(IAsyncResult asyncResult, ProcessRequestState innerState)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()&#xD;&#xA;   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)&#xD;&#xA;   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)&#xD;&#xA;   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()&#xD;&#xA;   at System.Web.HttpApplication.ExecuteStepImpl(IExecutionStep step)&#xD;&#xA;   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean&amp; completedSynchronously)"
  time="2021-02-26T05:32:10.8984088Z"
  statusCode="404">
  <serverVariables>
    <item
      name="ALL_HTTP">
      <value
        string="HTTP_CONNECTION:close&#xD;&#xA;HTTP_ACCEPT:text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9&#xD;&#xA;HTTP_ACCEPT_ENCODING:gzip, deflate, br&#xD;&#xA;HTTP_ACCEPT_LANGUAGE:en-GB,en;q=0.9,en-US;q=0.8&#xD;&#xA;HTTP_COOKIE:__RequestVerificationToken=hPwycjyUvrj1MA7o35aPKxZ9tfNt99tcnpnFhILFxNaDPy1ejY6xg4WNzjU1eyS1DKTfkkQ1U2OXHn5i52XMfe4PMMszd2Rt4ol3EokYY7E1&#xD;&#xA;HTTP_HOST:localhost:44308&#xD;&#xA;HTTP_USER_AGENT:Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36 Edg/88.0.705.74&#xD;&#xA;HTTP_UPGRADE_INSECURE_REQUESTS:1&#xD;&#xA;HTTP_SEC_FETCH_SITE:none&#xD;&#xA;HTTP_SEC_FETCH_MODE:navigate&#xD;&#xA;HTTP_SEC_FETCH_USER:?1&#xD;&#xA;HTTP_SEC_FETCH_DEST:document&#xD;&#xA;" />
    </item>
    <item
      name="ALL_RAW">
      <value
        string="Connection: close&#xD;&#xA;Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9&#xD;&#xA;Accept-Encoding: gzip, deflate, br&#xD;&#xA;Accept-Language: en-GB,en;q=0.9,en-US;q=0.8&#xD;&#xA;Cookie: __RequestVerificationToken=hPwycjyUvrj1MA7o35aPKxZ9tfNt99tcnpnFhILFxNaDPy1ejY6xg4WNzjU1eyS1DKTfkkQ1U2OXHn5i52XMfe4PMMszd2Rt4ol3EokYY7E1&#xD;&#xA;Host: localhost:44308&#xD;&#xA;User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36 Edg/88.0.705.74&#xD;&#xA;upgrade-insecure-requests: 1&#xD;&#xA;sec-fetch-site: none&#xD;&#xA;sec-fetch-mode: navigate&#xD;&#xA;sec-fetch-user: ?1&#xD;&#xA;sec-fetch-dest: document&#xD;&#xA;" />
    </item>
    <item
      name="APPL_MD_PATH">
      <value
        string="/LM/W3SVC/2/ROOT" />
    </item>
    <item
      name="APPL_PHYSICAL_PATH">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\" />
    </item>
    <item
      name="AUTH_TYPE">
      <value
        string="" />
    </item>
    <item
      name="AUTH_USER">
      <value
        string="" />
    </item>
    <item
      name="AUTH_PASSWORD">
      <value
        string="" />
    </item>
    <item
      name="LOGON_USER">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_USER">
      <value
        string="" />
    </item>
    <item
      name="CERT_COOKIE">
      <value
        string="" />
    </item>
    <item
      name="CERT_FLAGS">
      <value
        string="" />
    </item>
    <item
      name="CERT_ISSUER">
      <value
        string="" />
    </item>
    <item
      name="CERT_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="CERT_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="CERT_SERIALNUMBER">
      <value
        string="" />
    </item>
    <item
      name="CERT_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="CERT_SUBJECT">
      <value
        string="" />
    </item>
    <item
      name="CONTENT_LENGTH">
      <value
        string="0" />
    </item>
    <item
      name="CONTENT_TYPE">
      <value
        string="" />
    </item>
    <item
      name="GATEWAY_INTERFACE">
      <value
        string="CGI/1.1" />
    </item>
    <item
      name="HTTPS">
      <value
        string="on" />
    </item>
    <item
      name="HTTPS_KEYSIZE">
      <value
        string="256" />
    </item>
    <item
      name="HTTPS_SECRETKEYSIZE">
      <value
        string="2048" />
    </item>
    <item
      name="HTTPS_SERVER_ISSUER">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="HTTPS_SERVER_SUBJECT">
      <value
        string="CN=localhost" />
    </item>
    <item
      name="INSTANCE_ID">
      <value
        string="2" />
    </item>
    <item
      name="INSTANCE_META_PATH">
      <value
        string="/LM/W3SVC/2" />
    </item>
    <item
      name="LOCAL_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="PATH_INFO">
      <value
        string="/Client/StoreBankCard" />
    </item>
    <item
      name="PATH_TRANSLATED">
      <value
        string="C:\Users\tin\source\repos\CreditCard\CreditCard\Client\StoreBankCard" />
    </item>
    <item
      name="QUERY_STRING">
      <value
        string="" />
    </item>
    <item
      name="REMOTE_ADDR">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_HOST">
      <value
        string="::1" />
    </item>
    <item
      name="REMOTE_PORT">
      <value
        string="59008" />
    </item>
    <item
      name="REQUEST_METHOD">
      <value
        string="GET" />
    </item>
    <item
      name="SCRIPT_NAME">
      <value
        string="/Client/StoreBankCard" />
    </item>
    <item
      name="SERVER_NAME">
      <value
        string="localhost" />
    </item>
    <item
      name="SERVER_PORT">
      <value
        string="44308" />
    </item>
    <item
      name="SERVER_PORT_SECURE">
      <value
        string="1" />
    </item>
    <item
      name="SERVER_PROTOCOL">
      <value
        string="HTTP/1.1" />
    </item>
    <item
      name="SERVER_SOFTWARE">
      <value
        string="Microsoft-IIS/10.0" />
    </item>
    <item
      name="URL">
      <value
        string="/Client/StoreBankCard" />
    </item>
    <item
      name="HTTP_CONNECTION">
      <value
        string="close" />
    </item>
    <item
      name="HTTP_ACCEPT">
      <value
        string="text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9" />
    </item>
    <item
      name="HTTP_ACCEPT_ENCODING">
      <value
        string="gzip, deflate, br" />
    </item>
    <item
      name="HTTP_ACCEPT_LANGUAGE">
      <value
        string="en-GB,en;q=0.9,en-US;q=0.8" />
    </item>
    <item
      name="HTTP_COOKIE">
      <value
        string="__RequestVerificationToken=hPwycjyUvrj1MA7o35aPKxZ9tfNt99tcnpnFhILFxNaDPy1ejY6xg4WNzjU1eyS1DKTfkkQ1U2OXHn5i52XMfe4PMMszd2Rt4ol3EokYY7E1" />
    </item>
    <item
      name="HTTP_HOST">
      <value
        string="localhost:44308" />
    </item>
    <item
      name="HTTP_USER_AGENT">
      <value
        string="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36 Edg/88.0.705.74" />
    </item>
    <item
      name="HTTP_UPGRADE_INSECURE_REQUESTS">
      <value
        string="1" />
    </item>
    <item
      name="HTTP_SEC_FETCH_SITE">
      <value
        string="none" />
    </item>
    <item
      name="HTTP_SEC_FETCH_MODE">
      <value
        string="navigate" />
    </item>
    <item
      name="HTTP_SEC_FETCH_USER">
      <value
        string="?1" />
    </item>
    <item
      name="HTTP_SEC_FETCH_DEST">
      <value
        string="document" />
    </item>
  </serverVariables>
  <cookies>
    <item
      name="__RequestVerificationToken">
      <value
        string="hPwycjyUvrj1MA7o35aPKxZ9tfNt99tcnpnFhILFxNaDPy1ejY6xg4WNzjU1eyS1DKTfkkQ1U2OXHn5i52XMfe4PMMszd2Rt4ol3EokYY7E1" />
    </item>
  </cookies>
</error>')
SET IDENTITY_INSERT [dbo].[ELMAH_Error] OFF
GO
/****** Object:  Index [PK_ELMAH_Error]    Script Date: 2/26/2021 6:40:52 PM ******/
ALTER TABLE [dbo].[ELMAH_Error] ADD  CONSTRAINT [PK_ELMAH_Error] PRIMARY KEY NONCLUSTERED 
(
	[ErrorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ELMAH_Error] ADD  CONSTRAINT [DF_ELMAH_Error_ErrorId]  DEFAULT (newid()) FOR [ErrorId]
GO
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorsXml]    Script Date: 2/26/2021 6:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ELMAH_GetErrorsXml]
(
    @Application NVARCHAR(60),
    @PageIndex INT = 0,
    @PageSize INT = 15,
    @TotalCount INT OUTPUT
)
AS 

    SET NOCOUNT ON

    DECLARE @FirstTimeUTC DATETIME
    DECLARE @FirstSequence INT
    DECLARE @StartRow INT
    DECLARE @StartRowIndex INT

    SELECT 
        @TotalCount = COUNT(1) 
    FROM 
        [ELMAH_Error]
    WHERE 
        [Application] = @Application

    -- Get the ID of the first error for the requested page

    SET @StartRowIndex = @PageIndex * @PageSize + 1

    IF @StartRowIndex <= @TotalCount
    BEGIN

        SET ROWCOUNT @StartRowIndex

        SELECT  
            @FirstTimeUTC = [TimeUtc],
            @FirstSequence = [Sequence]
        FROM 
            [ELMAH_Error]
        WHERE   
            [Application] = @Application
        ORDER BY 
            [TimeUtc] DESC, 
            [Sequence] DESC

    END
    ELSE
    BEGIN

        SET @PageSize = 0

    END

    -- Now set the row count to the requested page size and get
    -- all records below it for the pertaining application.

    SET ROWCOUNT @PageSize

    SELECT 
        errorId     = [ErrorId], 
        application = [Application],
        host        = [Host], 
        type        = [Type],
        source      = [Source],
        message     = [Message],
        [user]      = [User],
        statusCode  = [StatusCode], 
        time        = CONVERT(VARCHAR(50), [TimeUtc], 126) + 'Z'
    FROM 
        [ELMAH_Error] error
    WHERE
        [Application] = @Application
    AND
        [TimeUtc] <= @FirstTimeUTC
    AND 
        [Sequence] <= @FirstSequence
    ORDER BY
        [TimeUtc] DESC, 
        [Sequence] DESC
    FOR
        XML AUTO

GO
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorXml]    Script Date: 2/26/2021 6:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ELMAH_GetErrorXml]
(
    @Application NVARCHAR(60),
    @ErrorId UNIQUEIDENTIFIER
)
AS

    SET NOCOUNT ON

    SELECT 
        [AllXml]
    FROM 
        [ELMAH_Error]
    WHERE
        [ErrorId] = @ErrorId
    AND
        [Application] = @Application

GO
/****** Object:  StoredProcedure [dbo].[ELMAH_LogError]    Script Date: 2/26/2021 6:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ELMAH_LogError]
(
    @ErrorId UNIQUEIDENTIFIER,
    @Application NVARCHAR(60),
    @Host NVARCHAR(30),
    @Type NVARCHAR(100),
    @Source NVARCHAR(60),
    @Message NVARCHAR(500),
    @User NVARCHAR(50),
    @AllXml NVARCHAR(MAX),
    @StatusCode INT,
    @TimeUtc DATETIME
)
AS

    SET NOCOUNT ON

    INSERT
    INTO
        [ELMAH_Error]
        (
            [ErrorId],
            [Application],
            [Host],
            [Type],
            [Source],
            [Message],
            [User],
            [AllXml],
            [StatusCode],
            [TimeUtc]
        )
    VALUES
        (
            @ErrorId,
            @Application,
            @Host,
            @Type,
            @Source,
            @Message,
            @User,
            @AllXml,
            @StatusCode,
            @TimeUtc
        )

GO
