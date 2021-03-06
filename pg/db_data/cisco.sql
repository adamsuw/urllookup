PGDMP     2        	            y            ahab-reactor    12.2    12.2 f    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    26421    ahab-reactor    DATABASE     �   CREATE DATABASE "ahab-reactor" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "ahab-reactor";
                postgres    false            �            1259    26482    Accounts    TABLE     �  CREATE TABLE public."Accounts" (
    "ID" bigint NOT NULL,
    "AccountNumber" character varying(255),
    "AccountBalance" numeric,
    "ProductID" bigint,
    "CustomerID" bigint,
    "IsGL" boolean,
    "MinimumBalance" numeric,
    "HasOverDraft" boolean,
    "OverDraftLimit" numeric,
    "OverDraftInterestRate" numeric,
    "OverDraftTenor" integer,
    "DepositInterestRate" numeric,
    "DepositTenor" integer,
    "Status" integer,
    "IsEnabled" boolean,
    "DateCreated" timestamp with time zone,
    "DateLastModified" timestamp with time zone,
    "Error" character varying(255),
    "CreatedBy" character varying(255),
    "LastModifiedBy" character varying(255),
    "Name" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "InstitutionID" bigint,
    "InstitutionCode" character varying(255),
    "CurrencyID" bigint,
    "Currency" character varying(255)
);
    DROP TABLE public."Accounts";
       public         heap    postgres    false            �            1259    26480    Accounts_ID_seq    SEQUENCE     z   CREATE SEQUENCE public."Accounts_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Accounts_ID_seq";
       public          postgres    false    211            �           0    0    Accounts_ID_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Accounts_ID_seq" OWNED BY public."Accounts"."ID";
          public          postgres    false    210            �            1259    26547 	   Addresses    TABLE     �  CREATE TABLE public."Addresses" (
    "ID" bigint NOT NULL,
    "EntityName" character varying(255),
    "EntityID" bigint,
    "Street" character varying(255),
    "City" character varying(255),
    "State" character varying(255),
    "Country" character varying(255),
    "IsEnabled" boolean,
    "DateCreated" timestamp with time zone,
    "DateLastModified" timestamp with time zone,
    "Error" character varying(255),
    "CreatedBy" character varying(255),
    "LastModifiedBy" character varying(255),
    "Name" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "InstitutionID" bigint,
    "InstitutionCode" character varying(255)
);
    DROP TABLE public."Addresses";
       public         heap    postgres    false            �            1259    26545    Addresses_ID_seq    SEQUENCE     {   CREATE SEQUENCE public."Addresses_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Addresses_ID_seq";
       public          postgres    false    221            �           0    0    Addresses_ID_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Addresses_ID_seq" OWNED BY public."Addresses"."ID";
          public          postgres    false    220            �            1259    26984    BusinessImages    TABLE     d  CREATE TABLE public."BusinessImages" (
    "ID" bigint NOT NULL,
    "ImageString" text,
    "ImageEntityID" bigint,
    "ImageEntity" character varying(255),
    "IsEnabled" boolean,
    "DateCreated" timestamp with time zone,
    "DateLastModified" timestamp with time zone,
    "Error" character varying(255),
    "CreatedBy" character varying(255),
    "LastModifiedBy" character varying(255),
    "InstitutionCode" character varying(255),
    "InstitutionID" integer,
    "Name" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 $   DROP TABLE public."BusinessImages";
       public         heap    postgres    false            �            1259    26982    BusinessImages_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."BusinessImages_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."BusinessImages_ID_seq";
       public          postgres    false    225            �           0    0    BusinessImages_ID_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."BusinessImages_ID_seq" OWNED BY public."BusinessImages"."ID";
          public          postgres    false    224            �            1259    26493 	   Customers    TABLE     >  CREATE TABLE public."Customers" (
    "ID" bigint NOT NULL,
    "FirstName" character varying(255),
    "LastName" character varying(255),
    "OtherName" character varying(255),
    "PhoneNumber" character varying(255),
    "Email" character varying(255),
    "Gender" integer,
    "DateOfBirth" timestamp with time zone,
    "BVN" character varying(255),
    "UserID" bigint,
    "IsEnabled" boolean,
    "DateCreated" timestamp with time zone,
    "DateLastModified" timestamp with time zone,
    "Error" character varying(255),
    "CreatedBy" character varying(255),
    "LastModifiedBy" character varying(255),
    "Name" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "InstitutionID" bigint,
    "InstitutionCode" character varying(255)
);
    DROP TABLE public."Customers";
       public         heap    postgres    false            �            1259    26491    Customers_ID_seq    SEQUENCE     {   CREATE SEQUENCE public."Customers_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Customers_ID_seq";
       public          postgres    false    213            �           0    0    Customers_ID_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Customers_ID_seq" OWNED BY public."Customers"."ID";
          public          postgres    false    212            �            1259    27534 	   Exchanges    TABLE     �  CREATE TABLE public."Exchanges" (
    "ID" bigint NOT NULL,
    "Amount" numeric,
    "Rate" numeric,
    "FromCurrency" character varying(255),
    "ToCurrency" character varying(255),
    "DestinationAccount" character varying(255),
    "Bank" character varying(255),
    "Status" character varying(255),
    "Response" character varying(255),
    "ExpiryDate" timestamp with time zone,
    "InstitutionID" bigint,
    "InstitutionCode" character varying(255),
    "IsEnabled" boolean,
    "DateCreated" timestamp with time zone,
    "DateLastModified" timestamp with time zone,
    "Error" character varying(255),
    "CreatedBy" character varying(255),
    "LastModifiedBy" character varying(255),
    "Name" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "TransactionRef" character varying(255),
    "RequesterUserID" bigint,
    "TransactionType" character varying(255),
    "TransactionID" bigint,
    "AccepterUserID" bigint
);
    DROP TABLE public."Exchanges";
       public         heap    postgres    false            �            1259    27532    Exchanges_ID_seq    SEQUENCE     {   CREATE SEQUENCE public."Exchanges_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Exchanges_ID_seq";
       public          postgres    false    227            �           0    0    Exchanges_ID_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Exchanges_ID_seq" OWNED BY public."Exchanges"."ID";
          public          postgres    false    226            �            1259    26518    Institutions    TABLE     �  CREATE TABLE public."Institutions" (
    "ID" bigint NOT NULL,
    "Code" character varying(255),
    "ContactEmail" character varying(255),
    "ContactPhonenumber" character varying(255),
    "ContactAddress" character varying(255),
    "DecryptionKey" text,
    "PassPhrase" character varying(255),
    "Password" character varying(255),
    "EncryptionKey" text,
    "LocalConnectionString" character varying(255),
    "RemoteConnectionString" character varying(255),
    "Industry" character varying(255),
    "ShortName" character varying(255),
    "ApprovedIP" character varying(255),
    "IsEnabled" boolean,
    "DateCreated" timestamp with time zone,
    "DateLastModified" timestamp with time zone,
    "Error" character varying(255),
    "CreatedBy" character varying(255),
    "LastModifiedBy" character varying(255),
    "Name" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."Institutions";
       public         heap    postgres    false            �            1259    26516    Institutions_ID_seq    SEQUENCE     ~   CREATE SEQUENCE public."Institutions_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Institutions_ID_seq";
       public          postgres    false    217            �           0    0    Institutions_ID_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Institutions_ID_seq" OWNED BY public."Institutions"."ID";
          public          postgres    false    216            �            1259    27593    Notifications    TABLE       CREATE TABLE public."Notifications" (
    "ID" bigint NOT NULL,
    "Recipient" bigint,
    "Sender" character varying(255),
    "Body" character varying(255),
    "Title" character varying(255),
    "Status" character varying(255),
    "Template" character varying(255),
    "InstitutionID" bigint,
    "InstitutionCode" character varying(255),
    "IsEnabled" boolean,
    "DateCreated" timestamp with time zone,
    "DateLastModified" timestamp with time zone,
    "Error" character varying(255),
    "CreatedBy" character varying(255),
    "LastModifiedBy" character varying(255),
    "Name" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "TransactionType" character varying(255),
    "TransactionID" bigint
);
 #   DROP TABLE public."Notifications";
       public         heap    postgres    false            �            1259    27591    Notifications_ID_seq    SEQUENCE        CREATE SEQUENCE public."Notifications_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Notifications_ID_seq";
       public          postgres    false    229            �           0    0    Notifications_ID_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Notifications_ID_seq" OWNED BY public."Notifications"."ID";
          public          postgres    false    228            �            1259    26504    Products    TABLE       CREATE TABLE public."Products" (
    "ID" bigint NOT NULL,
    "Prefix" character varying(255),
    "IsGLProduct" boolean,
    "ServiceType" character varying(255),
    "MinimumBalance" numeric,
    "HasOverDraft" boolean,
    "OverDraftLimit" numeric,
    "OverDraftInterestRate" numeric,
    "OverDraftTenor" integer,
    "DepositInterestRate" numeric,
    "DepositTenor" integer,
    "InstitutionPercentage" numeric,
    "CustomerPercentage" numeric,
    "IncomeAccount" bigint,
    "ExpenseAccount" bigint,
    "IsEnabled" boolean,
    "DateCreated" timestamp with time zone,
    "DateLastModified" timestamp with time zone,
    "Error" character varying(255),
    "CreatedBy" character varying(255),
    "LastModifiedBy" character varying(255),
    "Name" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "InstitutionID" bigint,
    "InstitutionCode" character varying(255),
    "CurrencyID" bigint,
    "Currency" character varying(255)
);
    DROP TABLE public."Products";
       public         heap    postgres    false            �            1259    26502    Products_ID_seq    SEQUENCE     z   CREATE SEQUENCE public."Products_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Products_ID_seq";
       public          postgres    false    215            �           0    0    Products_ID_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Products_ID_seq" OWNED BY public."Products"."ID";
          public          postgres    false    214            �            1259    26446    Roles    TABLE     ;  CREATE TABLE public."Roles" (
    "ID" bigint NOT NULL,
    "IsEnabled" boolean,
    "DateCreated" timestamp with time zone,
    "DateLastModified" timestamp with time zone,
    "Error" character varying(255),
    "CreatedBy" character varying(255),
    "LastModifiedBy" character varying(255),
    "InstitutionCode" character varying(255),
    "InstitutionID" bigint,
    "Name" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "IsTransactable" boolean,
    "TransactionAmount" numeric
);
    DROP TABLE public."Roles";
       public         heap    postgres    false            �            1259    26444    Roles_ID_seq    SEQUENCE     w   CREATE SEQUENCE public."Roles_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Roles_ID_seq";
       public          postgres    false    207            �           0    0    Roles_ID_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Roles_ID_seq" OWNED BY public."Roles"."ID";
          public          postgres    false    206            �            1259    26964    Transactions    TABLE       CREATE TABLE public."Transactions" (
    "ID" bigint NOT NULL,
    "Account" character varying(255),
    "Amount" numeric,
    "Narration" character varying(255),
    "TransactionRef" character varying(255),
    "TraceID" character varying(255),
    "Source" character varying(255),
    "GuidRef" character varying(255),
    "Type" integer,
    "InstitutionID" bigint,
    "InstitutionCode" character varying(255),
    "IsEnabled" boolean,
    "DateCreated" timestamp with time zone,
    "DateLastModified" timestamp with time zone,
    "Error" character varying(255),
    "CreatedBy" character varying(255),
    "LastModifiedBy" character varying(255),
    "Name" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."Transactions";
       public         heap    postgres    false            �            1259    26962    Transactions_ID_seq    SEQUENCE     ~   CREATE SEQUENCE public."Transactions_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Transactions_ID_seq";
       public          postgres    false    223            �           0    0    Transactions_ID_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Transactions_ID_seq" OWNED BY public."Transactions"."ID";
          public          postgres    false    222            �            1259    26457 
   UFunctions    TABLE     H  CREATE TABLE public."UFunctions" (
    "ID" bigint NOT NULL,
    "Url" character varying(255),
    "FGroup" character varying(255),
    "IsEnabled" boolean,
    "DateCreated" timestamp with time zone,
    "DateLastModified" timestamp with time zone,
    "Error" character varying(255),
    "CreatedBy" character varying(255),
    "LastModifiedBy" character varying(255),
    "InstitutionCode" character varying(255),
    "InstitutionID" bigint,
    "Name" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public."UFunctions";
       public         heap    postgres    false            �            1259    26455    UFunctions_ID_seq    SEQUENCE     |   CREATE SEQUENCE public."UFunctions_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."UFunctions_ID_seq";
       public          postgres    false    209            �           0    0    UFunctions_ID_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."UFunctions_ID_seq" OWNED BY public."UFunctions"."ID";
          public          postgres    false    208            �            1259    26529    Users    TABLE     �  CREATE TABLE public."Users" (
    "ID" bigint NOT NULL,
    "Username" character varying(255),
    "FirstName" character varying(255),
    "LastName" character varying(255),
    "FullName" character varying(255),
    "Password" character varying(255),
    "TransactionPin" character varying(255),
    "IsAuthenticated" boolean,
    "ForcePasswordChange" boolean,
    "LastLoginDate" timestamp with time zone,
    "NumberOfFailedAttempts" integer,
    "Email" character varying(255),
    "IsEnabled" boolean,
    "DateCreated" timestamp with time zone,
    "DateLastModified" timestamp with time zone,
    "Error" character varying(255),
    "CreatedBy" character varying(255),
    "LastModifiedBy" character varying(255),
    "Name" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ActivationLink" text,
    "InstitutionID" bigint,
    "InstitutionCode" character varying(255)
);
    DROP TABLE public."Users";
       public         heap    postgres    false            �            1259    26527    Users_ID_seq    SEQUENCE     w   CREATE SEQUENCE public."Users_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_ID_seq";
       public          postgres    false    219            �           0    0    Users_ID_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Users_ID_seq" OWNED BY public."Users"."ID";
          public          postgres    false    218            �            1259    26435    VTULogs    TABLE     v  CREATE TABLE public."VTULogs" (
    "ID" bigint NOT NULL,
    "MSISDN" character varying(255),
    "Network" character varying(255),
    "Amount" numeric,
    "Status" character varying(255),
    "RequestID" character varying(255),
    "IsSuccessful" boolean,
    "StatusMessage" character varying(255),
    "ResponseMessage" character varying(255),
    "ResponseCode" integer,
    "Source" integer,
    "IsEnabled" boolean,
    "DateCreated" timestamp with time zone,
    "DateLastModified" timestamp with time zone,
    "Error" character varying(255),
    "CreatedBy" character varying(255),
    "LastModifiedBy" character varying(255),
    "Name" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "InstitutionID" bigint,
    "InstitutionCode" character varying(255),
    "Ref" character varying(255)
);
    DROP TABLE public."VTULogs";
       public         heap    postgres    false            �            1259    26433    VTULogs_ID_seq    SEQUENCE     y   CREATE SEQUENCE public."VTULogs_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."VTULogs_ID_seq";
       public          postgres    false    205            �           0    0    VTULogs_ID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."VTULogs_ID_seq" OWNED BY public."VTULogs"."ID";
          public          postgres    false    204            �            1259    26424    VTUPins    TABLE     6  CREATE TABLE public."VTUPins" (
    "ID" bigint NOT NULL,
    "Pin" character varying(255),
    "Network" character varying(255),
    "Amount" numeric,
    "ExpiryDate" timestamp with time zone,
    "BatchID" bigint,
    "IsUsed" boolean,
    "IsSuccessful" boolean,
    "VTUResponse" character varying(255),
    "IsBilled" boolean,
    "MSISDN" character varying(255),
    "IsEnabled" boolean,
    "DateCreated" timestamp with time zone,
    "DateLastModified" timestamp with time zone,
    "Error" character varying(255),
    "CreatedBy" character varying(255),
    "LastModifiedBy" character varying(255),
    "Name" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "InstitutionID" bigint,
    "InstitutionCode" character varying(255)
);
    DROP TABLE public."VTUPins";
       public         heap    postgres    false            �            1259    26422    VTUPins_ID_seq    SEQUENCE     y   CREATE SEQUENCE public."VTUPins_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."VTUPins_ID_seq";
       public          postgres    false    203            �           0    0    VTUPins_ID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."VTUPins_ID_seq" OWNED BY public."VTUPins"."ID";
          public          postgres    false    202            �
           2604    26485    Accounts ID    DEFAULT     p   ALTER TABLE ONLY public."Accounts" ALTER COLUMN "ID" SET DEFAULT nextval('public."Accounts_ID_seq"'::regclass);
 >   ALTER TABLE public."Accounts" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    26550    Addresses ID    DEFAULT     r   ALTER TABLE ONLY public."Addresses" ALTER COLUMN "ID" SET DEFAULT nextval('public."Addresses_ID_seq"'::regclass);
 ?   ALTER TABLE public."Addresses" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    221    220    221            �
           2604    26987    BusinessImages ID    DEFAULT     |   ALTER TABLE ONLY public."BusinessImages" ALTER COLUMN "ID" SET DEFAULT nextval('public."BusinessImages_ID_seq"'::regclass);
 D   ALTER TABLE public."BusinessImages" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    224    225    225            �
           2604    26496    Customers ID    DEFAULT     r   ALTER TABLE ONLY public."Customers" ALTER COLUMN "ID" SET DEFAULT nextval('public."Customers_ID_seq"'::regclass);
 ?   ALTER TABLE public."Customers" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    27537    Exchanges ID    DEFAULT     r   ALTER TABLE ONLY public."Exchanges" ALTER COLUMN "ID" SET DEFAULT nextval('public."Exchanges_ID_seq"'::regclass);
 ?   ALTER TABLE public."Exchanges" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    227    226    227            �
           2604    26521    Institutions ID    DEFAULT     x   ALTER TABLE ONLY public."Institutions" ALTER COLUMN "ID" SET DEFAULT nextval('public."Institutions_ID_seq"'::regclass);
 B   ALTER TABLE public."Institutions" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    216    217    217            �
           2604    27596    Notifications ID    DEFAULT     z   ALTER TABLE ONLY public."Notifications" ALTER COLUMN "ID" SET DEFAULT nextval('public."Notifications_ID_seq"'::regclass);
 C   ALTER TABLE public."Notifications" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    228    229    229            �
           2604    26507    Products ID    DEFAULT     p   ALTER TABLE ONLY public."Products" ALTER COLUMN "ID" SET DEFAULT nextval('public."Products_ID_seq"'::regclass);
 >   ALTER TABLE public."Products" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    26449    Roles ID    DEFAULT     j   ALTER TABLE ONLY public."Roles" ALTER COLUMN "ID" SET DEFAULT nextval('public."Roles_ID_seq"'::regclass);
 ;   ALTER TABLE public."Roles" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    26967    Transactions ID    DEFAULT     x   ALTER TABLE ONLY public."Transactions" ALTER COLUMN "ID" SET DEFAULT nextval('public."Transactions_ID_seq"'::regclass);
 B   ALTER TABLE public."Transactions" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    223    222    223            �
           2604    26460    UFunctions ID    DEFAULT     t   ALTER TABLE ONLY public."UFunctions" ALTER COLUMN "ID" SET DEFAULT nextval('public."UFunctions_ID_seq"'::regclass);
 @   ALTER TABLE public."UFunctions" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    26532    Users ID    DEFAULT     j   ALTER TABLE ONLY public."Users" ALTER COLUMN "ID" SET DEFAULT nextval('public."Users_ID_seq"'::regclass);
 ;   ALTER TABLE public."Users" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    26438 
   VTULogs ID    DEFAULT     n   ALTER TABLE ONLY public."VTULogs" ALTER COLUMN "ID" SET DEFAULT nextval('public."VTULogs_ID_seq"'::regclass);
 =   ALTER TABLE public."VTULogs" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    26427 
   VTUPins ID    DEFAULT     n   ALTER TABLE ONLY public."VTUPins" ALTER COLUMN "ID" SET DEFAULT nextval('public."VTUPins_ID_seq"'::regclass);
 =   ALTER TABLE public."VTUPins" ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    203    202    203            �          0    26482    Accounts 
   TABLE DATA           �  COPY public."Accounts" ("ID", "AccountNumber", "AccountBalance", "ProductID", "CustomerID", "IsGL", "MinimumBalance", "HasOverDraft", "OverDraftLimit", "OverDraftInterestRate", "OverDraftTenor", "DepositInterestRate", "DepositTenor", "Status", "IsEnabled", "DateCreated", "DateLastModified", "Error", "CreatedBy", "LastModifiedBy", "Name", "createdAt", "updatedAt", "InstitutionID", "InstitutionCode", "CurrencyID", "Currency") FROM stdin;
    public          postgres    false    211   ��       �          0    26547 	   Addresses 
   TABLE DATA           	  COPY public."Addresses" ("ID", "EntityName", "EntityID", "Street", "City", "State", "Country", "IsEnabled", "DateCreated", "DateLastModified", "Error", "CreatedBy", "LastModifiedBy", "Name", "createdAt", "updatedAt", "InstitutionID", "InstitutionCode") FROM stdin;
    public          postgres    false    221   s�       �          0    26984    BusinessImages 
   TABLE DATA           �   COPY public."BusinessImages" ("ID", "ImageString", "ImageEntityID", "ImageEntity", "IsEnabled", "DateCreated", "DateLastModified", "Error", "CreatedBy", "LastModifiedBy", "InstitutionCode", "InstitutionID", "Name", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    225   E�       �          0    26493 	   Customers 
   TABLE DATA           1  COPY public."Customers" ("ID", "FirstName", "LastName", "OtherName", "PhoneNumber", "Email", "Gender", "DateOfBirth", "BVN", "UserID", "IsEnabled", "DateCreated", "DateLastModified", "Error", "CreatedBy", "LastModifiedBy", "Name", "createdAt", "updatedAt", "InstitutionID", "InstitutionCode") FROM stdin;
    public          postgres    false    213   ע       �          0    27534 	   Exchanges 
   TABLE DATA           �  COPY public."Exchanges" ("ID", "Amount", "Rate", "FromCurrency", "ToCurrency", "DestinationAccount", "Bank", "Status", "Response", "ExpiryDate", "InstitutionID", "InstitutionCode", "IsEnabled", "DateCreated", "DateLastModified", "Error", "CreatedBy", "LastModifiedBy", "Name", "createdAt", "updatedAt", "TransactionRef", "RequesterUserID", "TransactionType", "TransactionID", "AccepterUserID") FROM stdin;
    public          postgres    false    227   ��       �          0    26518    Institutions 
   TABLE DATA           ~  COPY public."Institutions" ("ID", "Code", "ContactEmail", "ContactPhonenumber", "ContactAddress", "DecryptionKey", "PassPhrase", "Password", "EncryptionKey", "LocalConnectionString", "RemoteConnectionString", "Industry", "ShortName", "ApprovedIP", "IsEnabled", "DateCreated", "DateLastModified", "Error", "CreatedBy", "LastModifiedBy", "Name", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   �       �          0    27593    Notifications 
   TABLE DATA           /  COPY public."Notifications" ("ID", "Recipient", "Sender", "Body", "Title", "Status", "Template", "InstitutionID", "InstitutionCode", "IsEnabled", "DateCreated", "DateLastModified", "Error", "CreatedBy", "LastModifiedBy", "Name", "createdAt", "updatedAt", "TransactionType", "TransactionID") FROM stdin;
    public          postgres    false    229   $�       �          0    26504    Products 
   TABLE DATA           �  COPY public."Products" ("ID", "Prefix", "IsGLProduct", "ServiceType", "MinimumBalance", "HasOverDraft", "OverDraftLimit", "OverDraftInterestRate", "OverDraftTenor", "DepositInterestRate", "DepositTenor", "InstitutionPercentage", "CustomerPercentage", "IncomeAccount", "ExpenseAccount", "IsEnabled", "DateCreated", "DateLastModified", "Error", "CreatedBy", "LastModifiedBy", "Name", "createdAt", "updatedAt", "InstitutionID", "InstitutionCode", "CurrencyID", "Currency") FROM stdin;
    public          postgres    false    215   #�       �          0    26446    Roles 
   TABLE DATA           �   COPY public."Roles" ("ID", "IsEnabled", "DateCreated", "DateLastModified", "Error", "CreatedBy", "LastModifiedBy", "InstitutionCode", "InstitutionID", "Name", "createdAt", "updatedAt", "IsTransactable", "TransactionAmount") FROM stdin;
    public          postgres    false    207   @�       �          0    26964    Transactions 
   TABLE DATA           (  COPY public."Transactions" ("ID", "Account", "Amount", "Narration", "TransactionRef", "TraceID", "Source", "GuidRef", "Type", "InstitutionID", "InstitutionCode", "IsEnabled", "DateCreated", "DateLastModified", "Error", "CreatedBy", "LastModifiedBy", "Name", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    223   ]�       �          0    26457 
   UFunctions 
   TABLE DATA           �   COPY public."UFunctions" ("ID", "Url", "FGroup", "IsEnabled", "DateCreated", "DateLastModified", "Error", "CreatedBy", "LastModifiedBy", "InstitutionCode", "InstitutionID", "Name", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    209   z�       �          0    26529    Users 
   TABLE DATA           �  COPY public."Users" ("ID", "Username", "FirstName", "LastName", "FullName", "Password", "TransactionPin", "IsAuthenticated", "ForcePasswordChange", "LastLoginDate", "NumberOfFailedAttempts", "Email", "IsEnabled", "DateCreated", "DateLastModified", "Error", "CreatedBy", "LastModifiedBy", "Name", "createdAt", "updatedAt", "ActivationLink", "InstitutionID", "InstitutionCode") FROM stdin;
    public          postgres    false    219   ��       �          0    26435    VTULogs 
   TABLE DATA           R  COPY public."VTULogs" ("ID", "MSISDN", "Network", "Amount", "Status", "RequestID", "IsSuccessful", "StatusMessage", "ResponseMessage", "ResponseCode", "Source", "IsEnabled", "DateCreated", "DateLastModified", "Error", "CreatedBy", "LastModifiedBy", "Name", "createdAt", "updatedAt", "InstitutionID", "InstitutionCode", "Ref") FROM stdin;
    public          postgres    false    205   i�       �          0    26424    VTUPins 
   TABLE DATA           ;  COPY public."VTUPins" ("ID", "Pin", "Network", "Amount", "ExpiryDate", "BatchID", "IsUsed", "IsSuccessful", "VTUResponse", "IsBilled", "MSISDN", "IsEnabled", "DateCreated", "DateLastModified", "Error", "CreatedBy", "LastModifiedBy", "Name", "createdAt", "updatedAt", "InstitutionID", "InstitutionCode") FROM stdin;
    public          postgres    false    203   ��       �           0    0    Accounts_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Accounts_ID_seq"', 4, true);
          public          postgres    false    210            �           0    0    Addresses_ID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Addresses_ID_seq"', 5, true);
          public          postgres    false    220            �           0    0    BusinessImages_ID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."BusinessImages_ID_seq"', 4, true);
          public          postgres    false    224            �           0    0    Customers_ID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Customers_ID_seq"', 4, true);
          public          postgres    false    212            �           0    0    Exchanges_ID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Exchanges_ID_seq"', 46, true);
          public          postgres    false    226            �           0    0    Institutions_ID_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Institutions_ID_seq"', 1, true);
          public          postgres    false    216            �           0    0    Notifications_ID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Notifications_ID_seq"', 52, true);
          public          postgres    false    228            �           0    0    Products_ID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Products_ID_seq"', 1, false);
          public          postgres    false    214            �           0    0    Roles_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Roles_ID_seq"', 1, false);
          public          postgres    false    206            �           0    0    Transactions_ID_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Transactions_ID_seq"', 1, false);
          public          postgres    false    222            �           0    0    UFunctions_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."UFunctions_ID_seq"', 1, false);
          public          postgres    false    208            �           0    0    Users_ID_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Users_ID_seq"', 4, true);
          public          postgres    false    218            �           0    0    VTULogs_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."VTULogs_ID_seq"', 36, true);
          public          postgres    false    204            �           0    0    VTUPins_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."VTUPins_ID_seq"', 1, false);
          public          postgres    false    202            �
           2606    26490    Accounts Accounts_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Accounts"
    ADD CONSTRAINT "Accounts_pkey" PRIMARY KEY ("ID");
 D   ALTER TABLE ONLY public."Accounts" DROP CONSTRAINT "Accounts_pkey";
       public            postgres    false    211            �
           2606    26555    Addresses Addresses_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Addresses"
    ADD CONSTRAINT "Addresses_pkey" PRIMARY KEY ("ID");
 F   ALTER TABLE ONLY public."Addresses" DROP CONSTRAINT "Addresses_pkey";
       public            postgres    false    221                        2606    26992 "   BusinessImages BusinessImages_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."BusinessImages"
    ADD CONSTRAINT "BusinessImages_pkey" PRIMARY KEY ("ID");
 P   ALTER TABLE ONLY public."BusinessImages" DROP CONSTRAINT "BusinessImages_pkey";
       public            postgres    false    225            �
           2606    26501    Customers Customers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Customers"
    ADD CONSTRAINT "Customers_pkey" PRIMARY KEY ("ID");
 F   ALTER TABLE ONLY public."Customers" DROP CONSTRAINT "Customers_pkey";
       public            postgres    false    213                       2606    27542    Exchanges Exchanges_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Exchanges"
    ADD CONSTRAINT "Exchanges_pkey" PRIMARY KEY ("ID");
 F   ALTER TABLE ONLY public."Exchanges" DROP CONSTRAINT "Exchanges_pkey";
       public            postgres    false    227            �
           2606    26526    Institutions Institutions_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Institutions"
    ADD CONSTRAINT "Institutions_pkey" PRIMARY KEY ("ID");
 L   ALTER TABLE ONLY public."Institutions" DROP CONSTRAINT "Institutions_pkey";
       public            postgres    false    217                       2606    27601     Notifications Notifications_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Notifications"
    ADD CONSTRAINT "Notifications_pkey" PRIMARY KEY ("ID");
 N   ALTER TABLE ONLY public."Notifications" DROP CONSTRAINT "Notifications_pkey";
       public            postgres    false    229            �
           2606    26512    Products Products_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_pkey" PRIMARY KEY ("ID");
 D   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_pkey";
       public            postgres    false    215            �
           2606    26454    Roles Roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "Roles_pkey" PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY public."Roles" DROP CONSTRAINT "Roles_pkey";
       public            postgres    false    207            �
           2606    26972    Transactions Transactions_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Transactions"
    ADD CONSTRAINT "Transactions_pkey" PRIMARY KEY ("ID");
 L   ALTER TABLE ONLY public."Transactions" DROP CONSTRAINT "Transactions_pkey";
       public            postgres    false    223            �
           2606    26465    UFunctions UFunctions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."UFunctions"
    ADD CONSTRAINT "UFunctions_pkey" PRIMARY KEY ("ID");
 H   ALTER TABLE ONLY public."UFunctions" DROP CONSTRAINT "UFunctions_pkey";
       public            postgres    false    209            �
           2606    26537    Users Users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    219            �
           2606    26443    VTULogs VTULogs_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."VTULogs"
    ADD CONSTRAINT "VTULogs_pkey" PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public."VTULogs" DROP CONSTRAINT "VTULogs_pkey";
       public            postgres    false    205            �
           2606    26432    VTUPins VTUPins_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."VTUPins"
    ADD CONSTRAINT "VTUPins_pkey" PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public."VTUPins" DROP CONSTRAINT "VTUPins_pkey";
       public            postgres    false    203            �   �   x���=�0�����"���@s�nL�Y*��{5%�RT�
���e+���bHu�+�w||)�!�א@kG���<�;���S}�����'Q���:'���-����a�@����[�1JŻ%���?�F2C�)��]#\�.E�ΐ�1M����ؙ;��
�
�\R��E�+�TL��!��6��Ֆ�j�1Oq�B      �   �   x����� @g�
�Frwp�����\�ơ�(��m� ]�KH�񒗈��O���^��������^A	U	X�v aN ��AXg}Bh��#R5Sd�U�8ϓ����@�Xs>pE�+�VHG29��6��}
�V���ܿN]j,��!������X9
���&b�@H�LДę��:
Xh��ΰ�d1E!�UR����      �   �   x����
�@��ۧ�^nٿ�����Ҋ�X$�?&�DH��}�7��9����2]�4�_#$T��L܅(�����?�;z���']�zP���-d#���!`K���Ej��S��d�{�� ��Q      �     x���=o�0���W�WXwgS�.��5�(q��U�/E%�ݏ��I���ξG6�ɹ���/�a�kh���K�r������w������΀�Șa�!���w����v-��JY.)?�c�-ևˊL�Rh�7ձE���"�L	���6���	���BE�l� D���\�ug�o�m���[i�=�sc߮Ƭ�օ\Z1��U�1ĔBy�c��Rա@(x��R�B���7-���݋���m9��M����#�c�)e�7�+�EA:���c/�$� 9ӿ      �     x��Z�n9}v�"�E�"�4�_З���l�E����5o`�Z��G$e��{������������|}���?��}�������OO��_��|�DdH��Zb~��RZ�\ZR�ށ���4KԮ@���b^=:L˧��'��>��%��/�@����¸�?_^���~�|{~�p��l��d?�Ⓕ}���T�%��P�²�=3%� S�����ٽ`�)Ξ�O�#����ѥ�SGH>H͞����H;��1�Wq��|`��2i�fq|�̫'Rh�������__��� @Ĩ(�	$��Aʸ�L�@+ˆ���0 �rk�K��J�r�q�3e����2�v4ʐb��I����8����br6#��P�_�m���h�	��mS�X�͇���gY����,�t�
�<-J"K���H9���Ў�fy�B��ARR��i�xއ.g��q�)h�n1��0;�X�i���?�\��p)�����y���YJ�r�8��~�_ %��/�)H0��ug��")�htK̽z6�)H����B9}P�Jy%�=�|
��y6�x����ES[�I�*ӫR{s�J��0dIAs�g34"BA]�V�He*f���f	�{���B�7y�vinf���@����hrTŸ�R��d'�ճ��w
�!z6������X��(��Rm:o�
��y6[�+L��T�ʱ
K>X�o���VHŲ��C�"��"LW��QJ"I���#Eb�Щr+ͥt ���d�Ьfa����uzJ���2D�^-g��.���~O��O��Тݜ�~�E��-����LkY}�V�;g(���Oc��z�^�������<���L��f�Ozzh�*�GU,�8՜j݁��s$���2��<�EcΣ�A��+H�"����3e_6��O͙��Y#�2<�^3]
�R�߿і�c�MV���ʌ�+��%Aj����������ty���-�L4��1,��ߪջ��P�e4^����̌	��v�"�rKڦ[!.߯_^������|�S���WJ.&���9�7�`8QQ�[Ex�12)�Pg�c�5�ě܌ky�-�{�4#�n���e�������aiI���9y�:r�E"j�#d�m�(NW ����6k��:�<p/rSP���L��C&_e�+�=�J�T�i��v_��JK˸�Y�[��Gm�8����^��5���I�HË���k.f�&�]�u��5y=��x���!gO�	�b�A��  �q�Y��2�@��0�� ��2�E:h�Y�1(���r��[�mOAj�0�:h��f6�t��@T��u��Awu�>��/wh&�3�l���s{�	��MjIW��۝nJ7#�V��B�z�l�FQ�[�J��_
8"Vuu��󖣭���K,Mٱ���	��;���0!�f@�^}�%'|�ތ��瓍����f��#d:�1��r��ہeO��t����3H?"�L>����K������~��C麘e9�iNv�v/�k�,f�����RX���j `B��n�z/�P����_�0�YǱ��A���HrGČj�#d�Tfa��1{��X�:�6caJ��0�ĖK�,Q(GI@��2�*��\!�L�JY6$g�"˧��Z��Y<8��m ̋t	�Hyր,��Lq-��"a�]��a�#X�.у��=uqqfi5�{P�޶$����*��{u���w��7���������S�N���{pE��4���{��&\/f�,ޡ�����\.43$�����g�������K      �     x���[���ǟ�����l.rY�NNw�
�M�_ �A墨�~�sf�3���L���_���5�������~��+��k�vM�z���3��?�Y��a|�]ST���8�{�h���d�$��+�|�6?�0k��R}MV׬B?���.|��S��r>gU�5ɻ��~M��!�J������1b��l�-�斱�����M1콵��ۙ*��\�֢�R1AN����y�F��!�^��v��Y/��L�Ar���G犚��V�X���h�SzR��G~Nܵ'��SW����P��	��M�=,'x������"{��K�zo�<���s6�P#@���M�|w)��ў�3��hVV�$O͕C$[�m�����	唛�#�ۄ�T�{}��ھ�6ek��{H8��Kz
������nj�� s�.GRw)�0?!��*��eA�`�k��,�\8�V[�Y�
>D�U˭�m��w��A��vvx����`�8"�u�Z�|���j��z��}�z��KWˑ7�þyƛ��]�\
��c\k�%(�':���d���mӴ�k^�ҿ<��7�%w�K�D�l���H�Ʀ�.������gD�U*�q12K7��d���|O-����e�Ey]�����Π��j�R��-�Mâ��N[y֗��W=��8W�^Y��L�GpA$�X�d�]��5�r[az!�����v��<B4�.����4`�=�~���!�Q ,�R���9�ί޻�79j���/;g�:ک$*j.���ʐ�yr��垍?O�ޭ`��G�p�VY�E���Ǐ��o���)�տ�G"���!����{�NN�L�eRC��ۀ�7�52����������S^�>�#��S��v���2�Q��3Z�*�̯	�0}E	A�1���	�'��Jha������1h��A�HMr�K��n���3�N��}�J�)���~��ws����]�vDh�v�Tɤ����,!�����}*5���!kG~�/i����TW!�޵K(���q�B��"cs�7L�qs�x��'X�f��*�� �ڙs*\Qn�`:#Uk$�����8;�JX�����ϔ�'��bþ��L�6�
�~���bzr��֙��ĵ�8�l��&���Z2K�.�R��D����@�W��7`�SM����VQ�Pɻ_vF8(xq�<F�(���rq�,�����JW���_������~ڣ���w ~�� ��>���s��M ���_�)��f����2;��������/��	      �   �  x��[M��6=ۿBȵk�3��[�{/͡rQl��Q���rӠ��P���� Ic��(�^�e���x3��p����>4��~7�mw�W��csh���P�m�m��=<4����}��}�=��v����;�.�P�Z֫��a��J��$���d�/��9پ�W�z�Z������ϳ�Ҡ����/ޱ�nAPID�P �R^�0(�ޘh���]lU�ZW����r�k���e�m�LšٶU������S�����m�K�U���͡z�;nV��:<�{~��i�O�����?�M��i�C��z߳z<��~�5�4�[���]����S&�r��pv̘�$� ��gLVȞdh�����k�)3����aQ`�jS*��d�uy�JXO�`ua�X,a�ʃ50	��eТMZ���p8!?�
'�3XU�0�[��B�VX�����+�ڽW���uA����TI~²`-���XHs��%��K����	A�.�nj!�V 1sH���x����5^e96a@/|��s�kr�i�	muVD��'�nXb<�$�Ĕ,�-�U�U>�2�Р���09Q*H�#��@H�,�a��$]%��JFM��U9��r��N��ޟ��t-�&Ҍ9#�Ʊ*{���&�X�A:V2c?c��u�Q�Ҵ�}x���}�(蚳� P���O��zb��ɫ|6��P2��w�X*��R��dY$$��9I4��Bb'�!jEII�r6����Ij NZX���n��8����p:��s�jr�����u�2���c����L�r��ډ�2�˞�iHM��=Cq2"	�i�	JG8i�~"&�	y֛�3M1�l*E17U�gԍ�1h�6`.8�M��p��>�,'�o��С,4a� ��P��,VdE~�uҧ�I��h\�3n�l2�����&CO`H����83�**�xƖ��)�L���ʠ��d�g�I�y�M��P�\�]=oT������@��Q�O��i�vg�\��?P_p6�|��l2��b��%��X�CH6hː�-;F��0��4q��!��1�J=���p�ՔR6�♘nJ�1Ǚ����]�D� 甛V�/��LωλĿ�;���5Y���eL�g��`�M�_��5��m1Їb��L������/�ͦ�������5�����xXo��A	�r�{p6�^Yk2�C�O��7��\�Tj|�a�'`FC����sCG�߷a��N���1?%��/������������j���Yn���+�%��z{l[��_�g�i3�m�^@oJїԱ/�;���f�j�x�)WΑ��_�s�/$��Hq�X͔\�t`FrD���c)?�/��J����<z兖4F���_��ѩ�C�JA�f�åU,��d�A49a 9�P%��/-�J
�2e$����2�\�/��/+��C�a����7���8����`��ł������Ǫ�7�:�dEOFpG�.h������ե�2s���3z�9���1�7#�o�|>�}9�i      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�͗Y��6ǟ{>E��e����v��e]�-�E��E�E5�m�-_��K����=�`@0��,�U?�K{8y_���l���M��1۷�}0���a�K�n<u?��t�g�>�`6�R��9��y>��|B���p�A �o��[�&� �� �-����ٷ���W��×�G���3R|�9�Gg�`���[�}�4��8<�H�����Ӳ��R�&�$��#�w�q8$C��>�dCyN��%���n��!;���u�u�J/*����]DYD��w̠�b�	��6��9�D-��~\�1XW�e]�����&���)�t�qS�Ωf�1�˜~\�󛸀��S�&�
���t��)�Xp�I�p�β�uH#-3N��)�ڄi���~�iQ'��r.{���vٞ1��dFn�1�m�N��5��.��.y{�1dcd'�"�
à�][��X1��e��F�V��WPF+�0�b6>JPo�ca&�/_x��T8x�-B}DDE5���Z�F��
�WF���t`�k�~�6�d<��Hy��X_�P���;��b�!�)qR&N�!(�N�^4�f���q�Ժ%M�c���y��Us�>�mo�v|���N��x�H������6lîH-`�Uƽs�7�$��d�`��&�h#��H2�� �8�0��Rg���5e��ȿ��kx�b��W�����肚��t�Y�&)cNܲ~�2HY����F���G)�Vh�Ŕ��A� ��ہ:o���+�3�ω��3�GN�Q��y���M!6����^������^bS4�3�����Pv�o�?�ʇ��3U@�=9>})Y��z�d����	�ӻ�~N�_����О"��8�Џ�q7�gŕ���	�I��q�lA���2F�ϷEO"|N1	�r$�o�c��\tv:�>2k��H��!�X�E����T(�	*��я,��ıU����2�I�8��o��w{�9�5�b���:���T�Q}�i.�X~k��$i�"wDG;K`w�G��k-F�ʺf�4��z�E7�&'��i�k��P��EA��0�h߰ۏұ� ̇�hO(�`�O�����W���;���V�%��b��}�G��3�( �`��ΫZYf����k֣g�V��@� �ay�����`Dd�pS���d	�ps?��o5��*Y�CV5q��zL@�8Q�M�mQ�[6�_�m�èq��[g��+hk�������{E��h�~'Mn�K�j.(4j�Ԏ�dl"�H+f�ߑ���M��$L���X�SG|���|�^��w�7��Ȑ(g���>�"0��3 ��Y�}�M�S��$ȿ���_��g<��7���8}B�"E�i�����@���J��&�~0�&�Qz!Б*BWn���b�;z����]�,V@1blڇ�26�&��Y���XT�0{9�L
�U<�u-���rޛ�m�O������8^��0���E�l��ҋ9�;Q�^��׎-���T��4me��`G��& �Z���F��A���\����)a�[fJX��ʢ�H;����qL@34�& �b�Zi{���!�K:gV՝��$![q�x�[��M�x���Δ�}6o1��kA�b Ih1;�	K�p��������U���Blɑ׍�(p��!��$b�z��k:
���p�4���������[�ʋ�d���+�Xi�>
c(�W�j���OSV\�z.��Qg�$�PT���4^G�꽴
#�HKF�R���+���Ei��$]|Qzhs�@��~f�<�k��j��sC�ދ���6��3|z�J>��t	T(�gO��%�6�CU�����msK5q$�"X�1�/�nImG�^����FL\/���Y#}���-s]a@�n��.���XuQ��\d@Ǚm�dm1��D3l���.AƇQ����NUʥ5���G�6L!
靏C,�zza��3�o�ֺ���B�J�}�TP�N�|�&|ÈYj�Ǵ*\e��cB�_2�-p�;S�uY%Gڪ�D�$�΢�7A�6��I0͝���[`���.��wo�s6z�����3�b�w�2���_+]�����2�k�o"���~*���[�!�l�[�f�H0ק������y~�
«�s��<�.k�Y�ςn��Y@�G��V�j [�ַ0.І{k���(�w�2f���;���6r��|.akoRծ
�yG6i$l�z�?k�@!~"~x�����<2PV      �     x��XMo�8='�·9,*��$K�����6�L�`
�I�&��_�id9f��Ɲmz�b?�g�����?��A��;�J�hC����_ Ơ��s}+'EБ�"g�9Ϡ�Ip�h��0�yeN3g)��V�,��i'����k8K(s��9QG 6�r���YϠ��$=[<���zf�tg�5�V�/��f��v��z�m_�����������էj��6���ڟI��p\������n��+�%�%�u�۽��V@���A�3��F�����f���p͏D���%��#L�N%ВI;�#�	HMD��-܃:�	j��Ѡ� �U	u��~bY�?-��"��:�G��F
��u�'h��r���Y"�����Z
iՃ:�	Z�	x��aHڃ:R�7�^^-����)�L��3��u�s�]�0�r��zi�����s�S?A��(�I�u�b�XnѤ���y{�����oM�n^_���Ŧ��?����vYC�sxD+���@4���V=AS�idT��B�H�B���\�?�ar�`������[~_�6���W��z�P�%	�¢N]D���H�;��t�և�w�\�(;�#�ԃz��Z��f��l�徺�����?���\�]�J�����X(��ϓ���6i��%���}[:�ئ��F�,��Ծ���e�/e1Z
����Φ	Ξ�#2]:����:^�-��۹���$\�z7��A�͵d�y5F�z��X�-k�u�k�UV֚�Nk����oӨz���hjE l >��h�C4���\-%�	%�c��-�Uyğz��|�#�Ts�wz������B���wV¢�	��H&|��4�
OaY"��_-HL�"ߓ���H�π!�N�EX�آ�?�:����j_j��4:��n8ޗaYbB�YI�*�-%��$zkn�C��]$r�_��������^�q�t��+���[惡<cy���(�E����d�/_���@[Ks���C�&�����7~��XG��b��Z��&T!	SH����3b��U���_�z      �      x������ � �     