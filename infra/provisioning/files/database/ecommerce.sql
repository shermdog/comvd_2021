--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name text,
    record_type text,
    record_id bigint,
    blob_id bigint,
    created_at timestamp with time zone
);


ALTER TABLE public.active_storage_attachments OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key text,
    filename text,
    content_type text,
    metadata text,
    byte_size bigint,
    checksum text,
    created_at timestamp with time zone
);


ALTER TABLE public.active_storage_blobs OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key text NOT NULL,
    value text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: friendly_id_slugs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.friendly_id_slugs (
    id bigint NOT NULL,
    slug text,
    sluggable_id bigint,
    sluggable_type text,
    scope text,
    created_at timestamp with time zone,
    deleted_at timestamp with time zone
);


ALTER TABLE public.friendly_id_slugs OWNER TO postgres;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.friendly_id_slugs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.friendly_id_slugs_id_seq OWNER TO postgres;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.friendly_id_slugs_id_seq OWNED BY public.friendly_id_slugs.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version text NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: spree_addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_addresses (
    id bigint NOT NULL,
    firstname text,
    lastname text,
    address1 text,
    address2 text,
    city text,
    zipcode text,
    phone text,
    state_name text,
    alternative_phone text,
    company text,
    state_id bigint,
    country_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    user_id bigint,
    deleted_at timestamp with time zone
);


ALTER TABLE public.spree_addresses OWNER TO postgres;

--
-- Name: spree_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_addresses_id_seq OWNER TO postgres;

--
-- Name: spree_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_addresses_id_seq OWNED BY public.spree_addresses.id;


--
-- Name: spree_adjustments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_adjustments (
    id bigint NOT NULL,
    source_type text,
    source_id bigint,
    adjustable_type text,
    adjustable_id bigint,
    amount numeric(10,2) DEFAULT NULL::numeric,
    label text,
    mandatory boolean,
    eligible boolean DEFAULT true,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    state text,
    order_id bigint,
    included boolean DEFAULT false
);


ALTER TABLE public.spree_adjustments OWNER TO postgres;

--
-- Name: spree_assets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_assets (
    id bigint NOT NULL,
    viewable_type text,
    viewable_id bigint,
    attachment_width bigint,
    attachment_height bigint,
    attachment_file_size bigint,
    "position" bigint,
    attachment_content_type text,
    attachment_file_name text,
    type text,
    attachment_updated_at timestamp with time zone,
    alt text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_assets OWNER TO postgres;

--
-- Name: spree_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_assets_id_seq OWNER TO postgres;

--
-- Name: spree_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_assets_id_seq OWNED BY public.spree_assets.id;


--
-- Name: spree_calculators; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_calculators (
    id bigint NOT NULL,
    type text,
    calculable_type text,
    calculable_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    preferences text,
    deleted_at timestamp with time zone
);


ALTER TABLE public.spree_calculators OWNER TO postgres;

--
-- Name: spree_calculators_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_calculators_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_calculators_id_seq OWNER TO postgres;

--
-- Name: spree_calculators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_calculators_id_seq OWNED BY public.spree_calculators.id;


--
-- Name: spree_countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_countries (
    id bigint NOT NULL,
    iso_name text,
    iso text,
    iso3 text,
    name text,
    numcode bigint,
    states_required boolean DEFAULT false,
    updated_at timestamp with time zone,
    zipcode_required boolean DEFAULT true
);


ALTER TABLE public.spree_countries OWNER TO postgres;

--
-- Name: spree_credit_cards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_credit_cards (
    id bigint NOT NULL,
    month text,
    year text,
    cc_type text,
    last_digits text,
    address_id bigint,
    gateway_customer_profile_id text,
    gateway_payment_profile_id text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    name text,
    user_id bigint,
    payment_method_id bigint,
    "default" boolean DEFAULT false,
    deleted_at timestamp with time zone
);


ALTER TABLE public.spree_credit_cards OWNER TO postgres;

--
-- Name: spree_customer_returns; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_customer_returns (
    id bigint NOT NULL,
    number text,
    stock_location_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_customer_returns OWNER TO postgres;

--
-- Name: spree_customer_returns_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_customer_returns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_customer_returns_id_seq OWNER TO postgres;

--
-- Name: spree_customer_returns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_customer_returns_id_seq OWNED BY public.spree_customer_returns.id;


--
-- Name: spree_gateways; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_gateways (
    id bigint NOT NULL,
    type text,
    name text,
    description text,
    active boolean DEFAULT true,
    environment text DEFAULT 'development'::text,
    server text DEFAULT 'test'::text,
    test_mode boolean DEFAULT true,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    preferences text
);


ALTER TABLE public.spree_gateways OWNER TO postgres;

--
-- Name: spree_gateways_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_gateways_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_gateways_id_seq OWNER TO postgres;

--
-- Name: spree_gateways_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_gateways_id_seq OWNED BY public.spree_gateways.id;


--
-- Name: spree_inventory_units; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_inventory_units (
    id bigint NOT NULL,
    state text,
    variant_id bigint,
    order_id bigint,
    shipment_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    pending boolean DEFAULT true,
    line_item_id bigint,
    quantity bigint DEFAULT '1'::bigint,
    original_return_item_id bigint
);


ALTER TABLE public.spree_inventory_units OWNER TO postgres;

--
-- Name: spree_line_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_line_items (
    id bigserial,
    variant_id bigint,
    order_id bigint,
    quantity bigint,
    price numeric(10,2),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    currency text,
    cost_price numeric(10,2) DEFAULT NULL::numeric,
    tax_category_id bigint,
    adjustment_total numeric(10,2) DEFAULT 0.0,
    additional_tax_total numeric(10,2) DEFAULT 0.0,
    promo_total numeric(10,2) DEFAULT 0.0,
    included_tax_total numeric(10,2) DEFAULT 0.0,
    pre_tax_amount numeric(12,4) DEFAULT 0.0,
    taxable_adjustment_total numeric(10,2) DEFAULT 0.0,
    non_taxable_adjustment_total numeric(10,2) DEFAULT 0.0
);


ALTER TABLE public.spree_line_items OWNER TO postgres;

--
-- Name: spree_log_entries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_log_entries (
    id bigint NOT NULL,
    source_type text,
    source_id bigint,
    details text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_log_entries OWNER TO postgres;

--
-- Name: spree_log_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_log_entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_log_entries_id_seq OWNER TO postgres;

--
-- Name: spree_log_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_log_entries_id_seq OWNED BY public.spree_log_entries.id;


--
-- Name: spree_oauth_access_grants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_oauth_access_grants (
    id bigint NOT NULL,
    resource_owner_id bigint,
    application_id bigint,
    token text,
    expires_in bigint,
    redirect_uri text,
    created_at timestamp with time zone,
    revoked_at timestamp with time zone,
    scopes text
);


ALTER TABLE public.spree_oauth_access_grants OWNER TO postgres;

--
-- Name: spree_oauth_access_grants_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_oauth_access_grants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_oauth_access_grants_id_seq OWNER TO postgres;

--
-- Name: spree_oauth_access_grants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_oauth_access_grants_id_seq OWNED BY public.spree_oauth_access_grants.id;


--
-- Name: spree_oauth_access_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_oauth_access_tokens (
    id bigint NOT NULL,
    resource_owner_id bigint,
    application_id bigint,
    token text,
    refresh_token text,
    expires_in bigint,
    revoked_at timestamp with time zone,
    created_at timestamp with time zone,
    scopes text,
    previous_refresh_token text DEFAULT ''::text
);


ALTER TABLE public.spree_oauth_access_tokens OWNER TO postgres;

--
-- Name: spree_oauth_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_oauth_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_oauth_access_tokens_id_seq OWNER TO postgres;

--
-- Name: spree_oauth_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_oauth_access_tokens_id_seq OWNED BY public.spree_oauth_access_tokens.id;


--
-- Name: spree_oauth_applications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_oauth_applications (
    id bigint NOT NULL,
    name text,
    uid text,
    secret text,
    redirect_uri text,
    scopes text DEFAULT ''::text,
    confidential boolean DEFAULT true,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_oauth_applications OWNER TO postgres;

--
-- Name: spree_oauth_applications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_oauth_applications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_oauth_applications_id_seq OWNER TO postgres;

--
-- Name: spree_oauth_applications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_oauth_applications_id_seq OWNED BY public.spree_oauth_applications.id;


--
-- Name: spree_option_type_prototypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_option_type_prototypes (
    prototype_id bigint,
    option_type_id bigint,
    id bigint NOT NULL
);


ALTER TABLE public.spree_option_type_prototypes OWNER TO postgres;

--
-- Name: spree_option_type_prototypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_option_type_prototypes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_option_type_prototypes_id_seq OWNER TO postgres;

--
-- Name: spree_option_type_prototypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_option_type_prototypes_id_seq OWNED BY public.spree_option_type_prototypes.id;


--
-- Name: spree_option_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_option_types (
    id bigint NOT NULL,
    name text,
    presentation text,
    "position" bigint DEFAULT '0'::bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_option_types OWNER TO postgres;

--
-- Name: spree_option_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_option_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_option_types_id_seq OWNER TO postgres;

--
-- Name: spree_option_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_option_types_id_seq OWNED BY public.spree_option_types.id;


--
-- Name: spree_option_value_variants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_option_value_variants (
    variant_id bigint,
    option_value_id bigint,
    id bigint NOT NULL
);


ALTER TABLE public.spree_option_value_variants OWNER TO postgres;

--
-- Name: spree_option_value_variants_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_option_value_variants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_option_value_variants_id_seq OWNER TO postgres;

--
-- Name: spree_option_value_variants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_option_value_variants_id_seq OWNED BY public.spree_option_value_variants.id;


--
-- Name: spree_option_values; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_option_values (
    id bigint NOT NULL,
    "position" bigint,
    name text,
    presentation text,
    option_type_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_option_values OWNER TO postgres;

--
-- Name: spree_option_values_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_option_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_option_values_id_seq OWNER TO postgres;

--
-- Name: spree_option_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_option_values_id_seq OWNED BY public.spree_option_values.id;


--
-- Name: spree_order_promotions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_order_promotions (
    order_id bigint,
    promotion_id bigint,
    id bigint NOT NULL
);


ALTER TABLE public.spree_order_promotions OWNER TO postgres;

--
-- Name: spree_order_promotions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_order_promotions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_order_promotions_id_seq OWNER TO postgres;

--
-- Name: spree_order_promotions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_order_promotions_id_seq OWNED BY public.spree_order_promotions.id;


--
-- Name: spree_orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_orders (
    id bigserial,
    number text,
    item_total numeric(10,2) DEFAULT 0.0,
    total numeric(10,2) DEFAULT 0.0,
    state text,
    adjustment_total numeric(10,2) DEFAULT 0.0,
    user_id bigint,
    completed_at timestamp with time zone,
    bill_address_id bigint,
    ship_address_id bigint,
    payment_total numeric(10,2) DEFAULT 0.0,
    shipment_state text,
    payment_state text,
    email text,
    special_instructions text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    currency text,
    last_ip_address text,
    created_by_id bigint,
    shipment_total numeric(10,2) DEFAULT 0.0,
    additional_tax_total numeric(10,2) DEFAULT 0.0,
    promo_total numeric(10,2) DEFAULT 0.0,
    channel text DEFAULT 'spree'::text,
    included_tax_total numeric(10,2) DEFAULT 0.0,
    item_count bigint DEFAULT '0'::bigint,
    approver_id bigint,
    approved_at timestamp with time zone,
    confirmation_delivered boolean DEFAULT false,
    considered_risky boolean DEFAULT false,
    token text,
    canceled_at timestamp with time zone,
    canceler_id bigint,
    store_id bigint,
    state_lock_version bigint DEFAULT '0'::bigint,
    taxable_adjustment_total numeric(10,2) DEFAULT 0.0,
    non_taxable_adjustment_total numeric(10,2) DEFAULT 0.0
);


ALTER TABLE public.spree_orders OWNER TO postgres;

--
-- Name: spree_payment_capture_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_payment_capture_events (
    id bigint NOT NULL,
    amount numeric(10,2) DEFAULT 0.0,
    payment_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_payment_capture_events OWNER TO postgres;

--
-- Name: spree_payment_capture_events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_payment_capture_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_payment_capture_events_id_seq OWNER TO postgres;

--
-- Name: spree_payment_capture_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_payment_capture_events_id_seq OWNED BY public.spree_payment_capture_events.id;


--
-- Name: spree_payment_methods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_payment_methods (
    id bigint NOT NULL,
    type text,
    name text,
    description text,
    active boolean DEFAULT true,
    deleted_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    display_on text DEFAULT 'both'::text,
    auto_capture boolean,
    preferences text,
    "position" bigint DEFAULT '0'::bigint
);


ALTER TABLE public.spree_payment_methods OWNER TO postgres;

--
-- Name: spree_payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_payments (
    id bigint NOT NULL,
    amount numeric(10,2) DEFAULT 0.0,
    order_id bigint,
    source_type text,
    source_id bigint,
    payment_method_id bigint,
    state text,
    response_code text,
    avs_response text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    number text,
    cvv_response_code text,
    cvv_response_message text
);


ALTER TABLE public.spree_payments OWNER TO postgres;

--
-- Name: spree_preferences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_preferences (
    id bigint NOT NULL,
    value text,
    key text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_preferences OWNER TO postgres;

--
-- Name: spree_prices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_prices (
    id bigint NOT NULL,
    variant_id bigint,
    amount numeric(10,2) DEFAULT NULL::numeric,
    currency text,
    deleted_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_prices OWNER TO postgres;

--
-- Name: spree_product_option_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_product_option_types (
    id bigint NOT NULL,
    "position" bigint,
    product_id bigint,
    option_type_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_product_option_types OWNER TO postgres;

--
-- Name: spree_product_option_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_product_option_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_product_option_types_id_seq OWNER TO postgres;

--
-- Name: spree_product_option_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_product_option_types_id_seq OWNED BY public.spree_product_option_types.id;


--
-- Name: spree_product_promotion_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_product_promotion_rules (
    product_id bigint,
    promotion_rule_id bigint,
    id bigint NOT NULL
);


ALTER TABLE public.spree_product_promotion_rules OWNER TO postgres;

--
-- Name: spree_product_promotion_rules_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_product_promotion_rules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_product_promotion_rules_id_seq OWNER TO postgres;

--
-- Name: spree_product_promotion_rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_product_promotion_rules_id_seq OWNED BY public.spree_product_promotion_rules.id;


--
-- Name: spree_product_properties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_product_properties (
    id bigint NOT NULL,
    value text,
    product_id bigint,
    property_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    "position" bigint DEFAULT '0'::bigint
);


ALTER TABLE public.spree_product_properties OWNER TO postgres;

--
-- Name: spree_product_properties_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_product_properties_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_product_properties_id_seq OWNER TO postgres;

--
-- Name: spree_product_properties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_product_properties_id_seq OWNED BY public.spree_product_properties.id;


--
-- Name: spree_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_products (
    id bigint NOT NULL,
    name text DEFAULT ''::text,
    description text,
    available_on timestamp with time zone,
    deleted_at timestamp with time zone,
    slug text,
    meta_description text,
    meta_keywords text,
    tax_category_id bigint,
    shipping_category_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    promotionable boolean DEFAULT true,
    meta_title text,
    discontinue_on timestamp with time zone
);


ALTER TABLE public.spree_products OWNER TO postgres;

--
-- Name: spree_products_taxons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_products_taxons (
    product_id bigint,
    taxon_id bigint,
    id bigint NOT NULL,
    "position" bigint
);


ALTER TABLE public.spree_products_taxons OWNER TO postgres;

--
-- Name: spree_products_taxons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_products_taxons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_products_taxons_id_seq OWNER TO postgres;

--
-- Name: spree_products_taxons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_products_taxons_id_seq OWNED BY public.spree_products_taxons.id;


--
-- Name: spree_promotion_action_line_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_action_line_items (
    id bigint NOT NULL,
    promotion_action_id bigint,
    variant_id bigint,
    quantity bigint DEFAULT '1'::bigint
);


ALTER TABLE public.spree_promotion_action_line_items OWNER TO postgres;

--
-- Name: spree_promotion_action_line_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_action_line_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_action_line_items_id_seq OWNER TO postgres;

--
-- Name: spree_promotion_action_line_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_action_line_items_id_seq OWNED BY public.spree_promotion_action_line_items.id;


--
-- Name: spree_promotion_actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_actions (
    id bigint NOT NULL,
    promotion_id bigint,
    "position" bigint,
    type text,
    deleted_at timestamp with time zone
);


ALTER TABLE public.spree_promotion_actions OWNER TO postgres;

--
-- Name: spree_promotion_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_categories (
    id bigint NOT NULL,
    name text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    code text
);


ALTER TABLE public.spree_promotion_categories OWNER TO postgres;

--
-- Name: spree_promotion_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_categories_id_seq OWNER TO postgres;

--
-- Name: spree_promotion_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_categories_id_seq OWNED BY public.spree_promotion_categories.id;


--
-- Name: spree_promotion_rule_taxons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_rule_taxons (
    id bigint NOT NULL,
    taxon_id bigint,
    promotion_rule_id bigint
);


ALTER TABLE public.spree_promotion_rule_taxons OWNER TO postgres;

--
-- Name: spree_promotion_rule_taxons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_rule_taxons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_rule_taxons_id_seq OWNER TO postgres;

--
-- Name: spree_promotion_rule_taxons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_rule_taxons_id_seq OWNED BY public.spree_promotion_rule_taxons.id;


--
-- Name: spree_promotion_rule_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_rule_users (
    user_id bigint,
    promotion_rule_id bigint,
    id bigint NOT NULL
);


ALTER TABLE public.spree_promotion_rule_users OWNER TO postgres;

--
-- Name: spree_promotion_rule_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_rule_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_rule_users_id_seq OWNER TO postgres;

--
-- Name: spree_promotion_rule_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_rule_users_id_seq OWNED BY public.spree_promotion_rule_users.id;


--
-- Name: spree_promotion_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_rules (
    id bigint NOT NULL,
    promotion_id bigint,
    user_id bigint,
    product_group_id bigint,
    type text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    code text,
    preferences text
);


ALTER TABLE public.spree_promotion_rules OWNER TO postgres;

--
-- Name: spree_promotions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotions (
    id bigint NOT NULL,
    description text,
    expires_at timestamp with time zone,
    starts_at timestamp with time zone,
    name text,
    type text,
    usage_limit bigint,
    match_policy text DEFAULT 'all'::text,
    code text,
    advertise boolean DEFAULT false,
    path text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    promotion_category_id bigint
);


ALTER TABLE public.spree_promotions OWNER TO postgres;

--
-- Name: spree_properties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_properties (
    id bigint NOT NULL,
    name text,
    presentation text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_properties OWNER TO postgres;

--
-- Name: spree_properties_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_properties_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_properties_id_seq OWNER TO postgres;

--
-- Name: spree_properties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_properties_id_seq OWNED BY public.spree_properties.id;


--
-- Name: spree_property_prototypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_property_prototypes (
    prototype_id bigint,
    property_id bigint,
    id bigint NOT NULL
);


ALTER TABLE public.spree_property_prototypes OWNER TO postgres;

--
-- Name: spree_property_prototypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_property_prototypes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_property_prototypes_id_seq OWNER TO postgres;

--
-- Name: spree_property_prototypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_property_prototypes_id_seq OWNED BY public.spree_property_prototypes.id;


--
-- Name: spree_prototype_taxons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_prototype_taxons (
    id bigint NOT NULL,
    taxon_id bigint,
    prototype_id bigint
);


ALTER TABLE public.spree_prototype_taxons OWNER TO postgres;

--
-- Name: spree_prototype_taxons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_prototype_taxons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_prototype_taxons_id_seq OWNER TO postgres;

--
-- Name: spree_prototype_taxons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_prototype_taxons_id_seq OWNED BY public.spree_prototype_taxons.id;


--
-- Name: spree_prototypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_prototypes (
    id bigint NOT NULL,
    name text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_prototypes OWNER TO postgres;

--
-- Name: spree_prototypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_prototypes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_prototypes_id_seq OWNER TO postgres;

--
-- Name: spree_prototypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_prototypes_id_seq OWNED BY public.spree_prototypes.id;


--
-- Name: spree_refund_reasons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_refund_reasons (
    id bigint NOT NULL,
    name text,
    active boolean DEFAULT true,
    mutable boolean DEFAULT true,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_refund_reasons OWNER TO postgres;

--
-- Name: spree_refund_reasons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_refund_reasons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_refund_reasons_id_seq OWNER TO postgres;

--
-- Name: spree_refund_reasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_refund_reasons_id_seq OWNED BY public.spree_refund_reasons.id;


--
-- Name: spree_refunds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_refunds (
    id bigint NOT NULL,
    payment_id bigint,
    amount numeric(10,2) DEFAULT 0.0,
    transaction_id text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    refund_reason_id bigint,
    reimbursement_id bigint
);


ALTER TABLE public.spree_refunds OWNER TO postgres;

--
-- Name: spree_reimbursement_credits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_reimbursement_credits (
    id bigint NOT NULL,
    amount numeric(10,2) DEFAULT 0.0,
    reimbursement_id bigint,
    creditable_id bigint,
    creditable_type text
);


ALTER TABLE public.spree_reimbursement_credits OWNER TO postgres;

--
-- Name: spree_reimbursement_credits_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_reimbursement_credits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_reimbursement_credits_id_seq OWNER TO postgres;

--
-- Name: spree_reimbursement_credits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_reimbursement_credits_id_seq OWNED BY public.spree_reimbursement_credits.id;


--
-- Name: spree_reimbursement_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_reimbursement_types (
    id bigint NOT NULL,
    name text,
    active boolean DEFAULT true,
    mutable boolean DEFAULT true,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    type text
);


ALTER TABLE public.spree_reimbursement_types OWNER TO postgres;

--
-- Name: spree_reimbursement_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_reimbursement_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_reimbursement_types_id_seq OWNER TO postgres;

--
-- Name: spree_reimbursement_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_reimbursement_types_id_seq OWNED BY public.spree_reimbursement_types.id;


--
-- Name: spree_reimbursements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_reimbursements (
    id bigint NOT NULL,
    number text,
    reimbursement_status text,
    customer_return_id bigint,
    order_id bigint,
    total numeric(10,2),
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_reimbursements OWNER TO postgres;

--
-- Name: spree_reimbursements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_reimbursements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_reimbursements_id_seq OWNER TO postgres;

--
-- Name: spree_reimbursements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_reimbursements_id_seq OWNED BY public.spree_reimbursements.id;


--
-- Name: spree_return_authorization_reasons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_return_authorization_reasons (
    id bigint NOT NULL,
    name text,
    active boolean DEFAULT true,
    mutable boolean DEFAULT true,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_return_authorization_reasons OWNER TO postgres;

--
-- Name: spree_return_authorization_reasons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_return_authorization_reasons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_return_authorization_reasons_id_seq OWNER TO postgres;

--
-- Name: spree_return_authorization_reasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_return_authorization_reasons_id_seq OWNED BY public.spree_return_authorization_reasons.id;


--
-- Name: spree_return_authorizations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_return_authorizations (
    id bigint NOT NULL,
    number text,
    state text,
    order_id bigint,
    memo text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    stock_location_id bigint,
    return_authorization_reason_id bigint
);


ALTER TABLE public.spree_return_authorizations OWNER TO postgres;

--
-- Name: spree_return_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_return_items (
    id bigint NOT NULL,
    return_authorization_id bigint,
    inventory_unit_id bigint,
    exchange_variant_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    pre_tax_amount numeric(12,4) DEFAULT 0.0,
    included_tax_total numeric(12,4) DEFAULT 0.0,
    additional_tax_total numeric(12,4) DEFAULT 0.0,
    reception_status text,
    acceptance_status text,
    customer_return_id bigint,
    reimbursement_id bigint,
    acceptance_status_errors text,
    preferred_reimbursement_type_id bigint,
    override_reimbursement_type_id bigint,
    resellable boolean DEFAULT true
);


ALTER TABLE public.spree_return_items OWNER TO postgres;

--
-- Name: spree_role_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_role_users (
    role_id bigint,
    user_id bigint,
    id bigint NOT NULL
);


ALTER TABLE public.spree_role_users OWNER TO postgres;

--
-- Name: spree_role_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_role_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_role_users_id_seq OWNER TO postgres;

--
-- Name: spree_role_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_role_users_id_seq OWNED BY public.spree_role_users.id;


--
-- Name: spree_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_roles (
    id bigint NOT NULL,
    name text
);


ALTER TABLE public.spree_roles OWNER TO postgres;

--
-- Name: spree_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_roles_id_seq OWNER TO postgres;

--
-- Name: spree_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_roles_id_seq OWNED BY public.spree_roles.id;


--
-- Name: spree_shipments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipments (
    id bigint NOT NULL,
    tracking text,
    number text,
    cost numeric(10,2) DEFAULT 0.0,
    shipped_at timestamp with time zone,
    order_id bigint,
    address_id bigint,
    state text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    stock_location_id bigint,
    adjustment_total numeric(10,2) DEFAULT 0.0,
    additional_tax_total numeric(10,2) DEFAULT 0.0,
    promo_total numeric(10,2) DEFAULT 0.0,
    included_tax_total numeric(10,2) DEFAULT 0.0,
    pre_tax_amount numeric(12,4) DEFAULT 0.0,
    taxable_adjustment_total numeric(10,2) DEFAULT 0.0,
    non_taxable_adjustment_total numeric(10,2) DEFAULT 0.0
);


ALTER TABLE public.spree_shipments OWNER TO postgres;

--
-- Name: spree_shipping_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipping_categories (
    id bigint NOT NULL,
    name text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_shipping_categories OWNER TO postgres;

--
-- Name: spree_shipping_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_shipping_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_categories_id_seq OWNER TO postgres;

--
-- Name: spree_shipping_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_shipping_categories_id_seq OWNED BY public.spree_shipping_categories.id;


--
-- Name: spree_shipping_method_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipping_method_categories (
    id bigint NOT NULL,
    shipping_method_id bigint,
    shipping_category_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_shipping_method_categories OWNER TO postgres;

--
-- Name: spree_shipping_method_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_shipping_method_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_method_categories_id_seq OWNER TO postgres;

--
-- Name: spree_shipping_method_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_shipping_method_categories_id_seq OWNED BY public.spree_shipping_method_categories.id;


--
-- Name: spree_shipping_method_zones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipping_method_zones (
    shipping_method_id bigint,
    zone_id bigint,
    id bigint NOT NULL
);


ALTER TABLE public.spree_shipping_method_zones OWNER TO postgres;

--
-- Name: spree_shipping_method_zones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_shipping_method_zones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_method_zones_id_seq OWNER TO postgres;

--
-- Name: spree_shipping_method_zones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_shipping_method_zones_id_seq OWNED BY public.spree_shipping_method_zones.id;


--
-- Name: spree_shipping_methods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipping_methods (
    id bigint NOT NULL,
    name text,
    display_on text,
    deleted_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    tracking_url text,
    admin_name text,
    tax_category_id bigint,
    code text
);


ALTER TABLE public.spree_shipping_methods OWNER TO postgres;

--
-- Name: spree_shipping_rates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipping_rates (
    id bigint NOT NULL,
    shipment_id bigint,
    shipping_method_id bigint,
    selected boolean DEFAULT false,
    cost numeric(8,2) DEFAULT '0'::numeric,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    tax_rate_id bigint
);


ALTER TABLE public.spree_shipping_rates OWNER TO postgres;

--
-- Name: spree_state_changes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_state_changes (
    id bigint NOT NULL,
    name text,
    previous_state text,
    stateful_id bigint,
    user_id bigint,
    stateful_type text,
    next_state text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_state_changes OWNER TO postgres;

--
-- Name: spree_state_changes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_state_changes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_state_changes_id_seq OWNER TO postgres;

--
-- Name: spree_state_changes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_state_changes_id_seq OWNED BY public.spree_state_changes.id;


--
-- Name: spree_states; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_states (
    id bigint NOT NULL,
    name text,
    abbr text,
    country_id bigint,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_states OWNER TO postgres;

--
-- Name: spree_states_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_states_id_seq OWNER TO postgres;

--
-- Name: spree_states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_states_id_seq OWNED BY public.spree_states.id;


--
-- Name: spree_stock_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_stock_items (
    id bigint NOT NULL,
    stock_location_id bigint,
    variant_id bigint,
    count_on_hand bigint DEFAULT '0'::bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    backorderable boolean DEFAULT false,
    deleted_at timestamp with time zone
);


ALTER TABLE public.spree_stock_items OWNER TO postgres;

--
-- Name: spree_stock_locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_stock_locations (
    id bigint NOT NULL,
    name text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    "default" boolean DEFAULT false,
    address1 text,
    address2 text,
    city text,
    state_id bigint,
    state_name text,
    country_id bigint,
    zipcode text,
    phone text,
    active boolean DEFAULT true,
    backorderable_default boolean DEFAULT false,
    propagate_all_variants boolean DEFAULT true,
    admin_name text
);


ALTER TABLE public.spree_stock_locations OWNER TO postgres;

--
-- Name: spree_stock_movements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_stock_movements (
    id bigint NOT NULL,
    stock_item_id bigint,
    quantity bigint DEFAULT '0'::bigint,
    action text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    originator_type text,
    originator_id bigint
);


ALTER TABLE public.spree_stock_movements OWNER TO postgres;

--
-- Name: spree_stock_transfers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_stock_transfers (
    id bigint NOT NULL,
    type text,
    reference text,
    source_location_id bigint,
    destination_location_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    number text
);


ALTER TABLE public.spree_stock_transfers OWNER TO postgres;

--
-- Name: spree_store_credit_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_store_credit_categories (
    id bigint NOT NULL,
    name text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_store_credit_categories OWNER TO postgres;

--
-- Name: spree_store_credit_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_store_credit_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_store_credit_categories_id_seq OWNER TO postgres;

--
-- Name: spree_store_credit_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_store_credit_categories_id_seq OWNED BY public.spree_store_credit_categories.id;


--
-- Name: spree_store_credit_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_store_credit_events (
    id bigint NOT NULL,
    store_credit_id bigint,
    action text,
    amount numeric(8,2),
    authorization_code text,
    user_total_amount numeric(8,2) DEFAULT 0.0,
    originator_id bigint,
    originator_type text,
    deleted_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_store_credit_events OWNER TO postgres;

--
-- Name: spree_store_credit_events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_store_credit_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_store_credit_events_id_seq OWNER TO postgres;

--
-- Name: spree_store_credit_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_store_credit_events_id_seq OWNED BY public.spree_store_credit_events.id;


--
-- Name: spree_store_credit_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_store_credit_types (
    id bigint NOT NULL,
    name text,
    priority bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_store_credit_types OWNER TO postgres;

--
-- Name: spree_store_credit_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_store_credit_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_store_credit_types_id_seq OWNER TO postgres;

--
-- Name: spree_store_credit_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_store_credit_types_id_seq OWNED BY public.spree_store_credit_types.id;


--
-- Name: spree_store_credits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_store_credits (
    id bigint NOT NULL,
    user_id bigint,
    category_id bigint,
    created_by_id bigint,
    amount numeric(8,2) DEFAULT 0.0,
    amount_used numeric(8,2) DEFAULT 0.0,
    memo text,
    deleted_at timestamp with time zone,
    currency text,
    amount_authorized numeric(8,2) DEFAULT 0.0,
    originator_id bigint,
    originator_type text,
    type_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_store_credits OWNER TO postgres;

--
-- Name: spree_store_credits_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_store_credits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_store_credits_id_seq OWNER TO postgres;

--
-- Name: spree_store_credits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_store_credits_id_seq OWNED BY public.spree_store_credits.id;


--
-- Name: spree_stores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_stores (
    id bigint NOT NULL,
    name text,
    url text,
    meta_description text,
    meta_keywords text,
    seo_title text,
    mail_from_address text,
    default_currency text,
    code text,
    "default" boolean DEFAULT false,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_stores OWNER TO postgres;

--
-- Name: spree_stores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_stores_id_seq OWNER TO postgres;

--
-- Name: spree_stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_stores_id_seq OWNED BY public.spree_stores.id;


--
-- Name: spree_taggings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_taggings (
    id bigint NOT NULL,
    tag_id bigint,
    taggable_type text,
    taggable_id bigint,
    tagger_type text,
    tagger_id bigint,
    context text,
    created_at timestamp with time zone
);


ALTER TABLE public.spree_taggings OWNER TO postgres;

--
-- Name: spree_taggings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_taggings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_taggings_id_seq OWNER TO postgres;

--
-- Name: spree_taggings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_taggings_id_seq OWNED BY public.spree_taggings.id;


--
-- Name: spree_tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_tags (
    id bigint NOT NULL,
    name text,
    taggings_count bigint DEFAULT '0'::bigint
);


ALTER TABLE public.spree_tags OWNER TO postgres;

--
-- Name: spree_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_tags_id_seq OWNER TO postgres;

--
-- Name: spree_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_tags_id_seq OWNED BY public.spree_tags.id;


--
-- Name: spree_tax_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_tax_categories (
    id bigint NOT NULL,
    name text,
    description text,
    is_default boolean DEFAULT false,
    deleted_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    tax_code text
);


ALTER TABLE public.spree_tax_categories OWNER TO postgres;

--
-- Name: spree_tax_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_tax_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_tax_categories_id_seq OWNER TO postgres;

--
-- Name: spree_tax_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_tax_categories_id_seq OWNED BY public.spree_tax_categories.id;


--
-- Name: spree_tax_rates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_tax_rates (
    id bigint NOT NULL,
    amount numeric(8,5),
    zone_id bigint,
    tax_category_id bigint,
    included_in_price boolean DEFAULT false,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    name text,
    show_rate_in_label boolean DEFAULT true,
    deleted_at timestamp with time zone
);


ALTER TABLE public.spree_tax_rates OWNER TO postgres;

--
-- Name: spree_tax_rates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_tax_rates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_tax_rates_id_seq OWNER TO postgres;

--
-- Name: spree_tax_rates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_tax_rates_id_seq OWNED BY public.spree_tax_rates.id;


--
-- Name: spree_taxonomies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_taxonomies (
    id bigint NOT NULL,
    name text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    "position" bigint DEFAULT '0'::bigint
);


ALTER TABLE public.spree_taxonomies OWNER TO postgres;

--
-- Name: spree_taxonomies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_taxonomies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_taxonomies_id_seq OWNER TO postgres;

--
-- Name: spree_taxonomies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_taxonomies_id_seq OWNED BY public.spree_taxonomies.id;


--
-- Name: spree_taxons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_taxons (
    id bigint NOT NULL,
    parent_id bigint,
    "position" bigint DEFAULT '0'::bigint,
    name text,
    permalink text,
    taxonomy_id bigint,
    lft bigint,
    rgt bigint,
    description text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    meta_title text,
    meta_description text,
    meta_keywords text,
    depth bigint
);


ALTER TABLE public.spree_taxons OWNER TO postgres;

--
-- Name: spree_trackers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_trackers (
    id bigint NOT NULL,
    analytics_id text,
    active boolean DEFAULT true,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    engine bigint DEFAULT '0'::bigint
);


ALTER TABLE public.spree_trackers OWNER TO postgres;

--
-- Name: spree_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_users (
    id bigint NOT NULL,
    encrypted_password text,
    password_salt text,
    email text,
    remember_token text,
    persistence_token text,
    reset_password_token text,
    perishable_token text,
    sign_in_count bigint DEFAULT '0'::bigint,
    failed_attempts bigint DEFAULT '0'::bigint,
    last_request_at timestamp with time zone,
    current_sign_in_at timestamp with time zone,
    last_sign_in_at timestamp with time zone,
    current_sign_in_ip text,
    last_sign_in_ip text,
    login text,
    ship_address_id bigint,
    bill_address_id bigint,
    authentication_token text,
    unlock_token text,
    locked_at timestamp with time zone,
    reset_password_sent_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    spree_api_key text,
    remember_created_at timestamp with time zone,
    deleted_at timestamp with time zone,
    confirmation_token text,
    confirmed_at timestamp with time zone,
    confirmation_sent_at timestamp with time zone
);


ALTER TABLE public.spree_users OWNER TO postgres;

--
-- Name: spree_variants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_variants (
    id bigint NOT NULL,
    sku text DEFAULT ''::text,
    weight numeric(8,2) DEFAULT 0.0,
    height numeric(8,2) DEFAULT NULL::numeric,
    width numeric(8,2) DEFAULT NULL::numeric,
    depth numeric(8,2) DEFAULT NULL::numeric,
    deleted_at timestamp with time zone,
    is_master boolean DEFAULT false,
    product_id bigint,
    cost_price numeric(10,2) DEFAULT NULL::numeric,
    "position" bigint,
    cost_currency text,
    track_inventory boolean DEFAULT true,
    tax_category_id bigint,
    updated_at timestamp with time zone,
    discontinue_on timestamp with time zone,
    created_at timestamp with time zone
);


ALTER TABLE public.spree_variants OWNER TO postgres;

--
-- Name: spree_zone_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_zone_members (
    id bigint NOT NULL,
    zoneable_type text,
    zoneable_id bigint,
    zone_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.spree_zone_members OWNER TO postgres;

--
-- Name: spree_zone_members_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_zone_members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_zone_members_id_seq OWNER TO postgres;

--
-- Name: spree_zone_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_zone_members_id_seq OWNED BY public.spree_zone_members.id;


--
-- Name: spree_zones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_zones (
    id bigint NOT NULL,
    name text,
    description text,
    default_tax boolean DEFAULT false,
    zone_members_count bigint DEFAULT '0'::bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    kind text
);


ALTER TABLE public.spree_zones OWNER TO postgres;

--
-- Name: spree_zones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_zones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_zones_id_seq OWNER TO postgres;

--
-- Name: spree_zones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_zones_id_seq OWNED BY public.spree_zones.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: friendly_id_slugs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.friendly_id_slugs ALTER COLUMN id SET DEFAULT nextval('public.friendly_id_slugs_id_seq'::regclass);


--
-- Name: spree_addresses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_addresses ALTER COLUMN id SET DEFAULT nextval('public.spree_addresses_id_seq'::regclass);


--
-- Name: spree_assets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_assets ALTER COLUMN id SET DEFAULT nextval('public.spree_assets_id_seq'::regclass);


--
-- Name: spree_calculators id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_calculators ALTER COLUMN id SET DEFAULT nextval('public.spree_calculators_id_seq'::regclass);


--
-- Name: spree_customer_returns id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_customer_returns ALTER COLUMN id SET DEFAULT nextval('public.spree_customer_returns_id_seq'::regclass);


--
-- Name: spree_gateways id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_gateways ALTER COLUMN id SET DEFAULT nextval('public.spree_gateways_id_seq'::regclass);


--
-- Name: spree_log_entries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_log_entries ALTER COLUMN id SET DEFAULT nextval('public.spree_log_entries_id_seq'::regclass);


--
-- Name: spree_oauth_access_grants id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_oauth_access_grants ALTER COLUMN id SET DEFAULT nextval('public.spree_oauth_access_grants_id_seq'::regclass);


--
-- Name: spree_oauth_access_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_oauth_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.spree_oauth_access_tokens_id_seq'::regclass);


--
-- Name: spree_oauth_applications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_oauth_applications ALTER COLUMN id SET DEFAULT nextval('public.spree_oauth_applications_id_seq'::regclass);


--
-- Name: spree_option_type_prototypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_type_prototypes ALTER COLUMN id SET DEFAULT nextval('public.spree_option_type_prototypes_id_seq'::regclass);


--
-- Name: spree_option_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_types ALTER COLUMN id SET DEFAULT nextval('public.spree_option_types_id_seq'::regclass);


--
-- Name: spree_option_value_variants id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_value_variants ALTER COLUMN id SET DEFAULT nextval('public.spree_option_value_variants_id_seq'::regclass);


--
-- Name: spree_option_values id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_values ALTER COLUMN id SET DEFAULT nextval('public.spree_option_values_id_seq'::regclass);


--
-- Name: spree_order_promotions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_order_promotions ALTER COLUMN id SET DEFAULT nextval('public.spree_order_promotions_id_seq'::regclass);


--
-- Name: spree_payment_capture_events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_payment_capture_events ALTER COLUMN id SET DEFAULT nextval('public.spree_payment_capture_events_id_seq'::regclass);


--
-- Name: spree_product_option_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_product_option_types ALTER COLUMN id SET DEFAULT nextval('public.spree_product_option_types_id_seq'::regclass);


--
-- Name: spree_product_promotion_rules id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_product_promotion_rules ALTER COLUMN id SET DEFAULT nextval('public.spree_product_promotion_rules_id_seq'::regclass);


--
-- Name: spree_product_properties id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_product_properties ALTER COLUMN id SET DEFAULT nextval('public.spree_product_properties_id_seq'::regclass);


--
-- Name: spree_products_taxons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_products_taxons ALTER COLUMN id SET DEFAULT nextval('public.spree_products_taxons_id_seq'::regclass);


--
-- Name: spree_promotion_action_line_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_action_line_items ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_action_line_items_id_seq'::regclass);


--
-- Name: spree_promotion_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_categories_id_seq'::regclass);


--
-- Name: spree_promotion_rule_taxons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rule_taxons ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_rule_taxons_id_seq'::regclass);


--
-- Name: spree_promotion_rule_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rule_users ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_rule_users_id_seq'::regclass);


--
-- Name: spree_properties id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_properties ALTER COLUMN id SET DEFAULT nextval('public.spree_properties_id_seq'::regclass);


--
-- Name: spree_property_prototypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_property_prototypes ALTER COLUMN id SET DEFAULT nextval('public.spree_property_prototypes_id_seq'::regclass);


--
-- Name: spree_prototype_taxons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_prototype_taxons ALTER COLUMN id SET DEFAULT nextval('public.spree_prototype_taxons_id_seq'::regclass);


--
-- Name: spree_prototypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_prototypes ALTER COLUMN id SET DEFAULT nextval('public.spree_prototypes_id_seq'::regclass);


--
-- Name: spree_refund_reasons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_refund_reasons ALTER COLUMN id SET DEFAULT nextval('public.spree_refund_reasons_id_seq'::regclass);


--
-- Name: spree_reimbursement_credits id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_reimbursement_credits ALTER COLUMN id SET DEFAULT nextval('public.spree_reimbursement_credits_id_seq'::regclass);


--
-- Name: spree_reimbursement_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_reimbursement_types ALTER COLUMN id SET DEFAULT nextval('public.spree_reimbursement_types_id_seq'::regclass);


--
-- Name: spree_reimbursements id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_reimbursements ALTER COLUMN id SET DEFAULT nextval('public.spree_reimbursements_id_seq'::regclass);


--
-- Name: spree_return_authorization_reasons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_return_authorization_reasons ALTER COLUMN id SET DEFAULT nextval('public.spree_return_authorization_reasons_id_seq'::regclass);


--
-- Name: spree_role_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_role_users ALTER COLUMN id SET DEFAULT nextval('public.spree_role_users_id_seq'::regclass);


--
-- Name: spree_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_roles ALTER COLUMN id SET DEFAULT nextval('public.spree_roles_id_seq'::regclass);


--
-- Name: spree_shipping_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_categories_id_seq'::regclass);


--
-- Name: spree_shipping_method_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_method_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_method_categories_id_seq'::regclass);


--
-- Name: spree_shipping_method_zones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_method_zones ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_method_zones_id_seq'::regclass);


--
-- Name: spree_state_changes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_state_changes ALTER COLUMN id SET DEFAULT nextval('public.spree_state_changes_id_seq'::regclass);


--
-- Name: spree_states id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_states ALTER COLUMN id SET DEFAULT nextval('public.spree_states_id_seq'::regclass);


--
-- Name: spree_store_credit_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credit_categories_id_seq'::regclass);


--
-- Name: spree_store_credit_events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_events ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credit_events_id_seq'::regclass);


--
-- Name: spree_store_credit_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_types ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credit_types_id_seq'::regclass);


--
-- Name: spree_store_credits id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credits ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credits_id_seq'::regclass);


--
-- Name: spree_stores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stores ALTER COLUMN id SET DEFAULT nextval('public.spree_stores_id_seq'::regclass);


--
-- Name: spree_taggings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_taggings ALTER COLUMN id SET DEFAULT nextval('public.spree_taggings_id_seq'::regclass);


--
-- Name: spree_tags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tags ALTER COLUMN id SET DEFAULT nextval('public.spree_tags_id_seq'::regclass);


--
-- Name: spree_tax_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_tax_categories_id_seq'::regclass);


--
-- Name: spree_tax_rates id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_rates ALTER COLUMN id SET DEFAULT nextval('public.spree_tax_rates_id_seq'::regclass);


--
-- Name: spree_taxonomies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_taxonomies ALTER COLUMN id SET DEFAULT nextval('public.spree_taxonomies_id_seq'::regclass);


--
-- Name: spree_zone_members id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_zone_members ALTER COLUMN id SET DEFAULT nextval('public.spree_zone_members_id_seq'::regclass);


--
-- Name: spree_zones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_zones ALTER COLUMN id SET DEFAULT nextval('public.spree_zones_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-09-04 14:49:16.394252+00	2019-09-04 14:49:16.394252+00
\.


--
-- Data for Name: friendly_id_slugs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at, deleted_at) FROM stdin;
1	datadog-tote	1	Spree::Product	\N	2019-09-04 14:50:06.5231+00	\N
2	datadog-bag	2	Spree::Product	\N	2019-09-04 14:50:06.668019+00	\N
3	datadog-baseball-jersey	3	Spree::Product	\N	2019-09-04 14:50:06.776801+00	\N
4	datadog-jr-spaghetti	4	Spree::Product	\N	2019-09-04 14:50:06.870899+00	\N
5	datadog-ringer-t-shirt	5	Spree::Product	\N	2019-09-04 14:50:06.966398+00	\N
6	apache-baseball-jersey	6	Spree::Product	\N	2019-09-04 14:50:07.097573+00	\N
7	spree-baseball-jersey	7	Spree::Product	\N	2019-09-04 14:50:07.185459+00	\N
8	spree-jr-spaghetti	8	Spree::Product	\N	2019-09-04 14:50:07.274988+00	\N
9	spree-ringer-t-shirt	9	Spree::Product	\N	2019-09-04 14:50:07.361074+00	\N
10	spree-tote	10	Spree::Product	\N	2019-09-04 14:50:07.451543+00	\N
11	spree-bag	11	Spree::Product	\N	2019-09-04 14:50:07.545058+00	\N
12	datadog-mug	12	Spree::Product	\N	2019-09-04 14:50:07.630544+00	\N
13	datadog-stein	13	Spree::Product	\N	2019-09-04 14:50:07.716902+00	\N
14	monitoring-stein	14	Spree::Product	\N	2019-09-04 14:50:07.805159+00	\N
15	monitoring-mug	15	Spree::Product	\N	2019-09-04 14:50:07.891115+00	\N
16	categories	1	Spree::Taxon	\N	2019-09-04 14:50:07.998588+00	\N
17	brands	2	Spree::Taxon	\N	2019-09-04 14:50:08.045018+00	\N
18	bags	3	Spree::Taxon	\N	2019-09-04 14:50:08.122397+00	\N
19	mugs	4	Spree::Taxon	\N	2019-09-04 14:50:08.223494+00	\N
20	clothing	5	Spree::Taxon	\N	2019-09-04 14:50:08.316747+00	\N
21	shirts	6	Spree::Taxon	\N	2019-09-04 14:50:08.361578+00	\N
22	t-shirts	7	Spree::Taxon	\N	2019-09-04 14:50:08.442854+00	\N
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20190904144904
20190904144905
20190904144906
20190904144907
20190904144908
20190904144909
20190904144910
20190904144911
20190904144912
20190904144913
20190904144914
20190904144915
20190904144916
20190904144917
20190904144918
20190904144919
20190904144920
20190904144921
20190904144922
20190904144923
20190904144924
20190904144925
20190904144926
20190904144927
20190904144928
20190904144929
20190904144930
20190904144931
20190904144932
20190904144933
20190904144934
20190904144935
20190904144936
20190904144937
20190904144938
20190904144939
20190904144940
20190904144941
20190904144942
20190904144943
20190904144944
20190904144945
20190904144946
20190904144947
20190904144948
20190904144949
20190904144950
20190904144951
20190904144952
20190904144953
20190904144954
20190904144955
20190904144956
20190904144957
20190904144958
20190904144959
20190904144960
20190904144961
20190904144962
20190904144963
20190904144964
20190904144965
20190904144966
20190904144967
20190904144968
20190904144969
20190904144970
20190904144971
20190904144972
20190904144973
20190904144974
20190904144975
20190904144976
20190904144977
20190904144978
20190904144979
20190904144980
20190904144981
20190904144982
20190904144983
20190904144984
20190904144985
20190904144986
20190904144987
20190904144988
20190904144989
20190904144990
20190904144991
20190904144992
20190904144993
20190904144994
20190904144995
20190904144996
20190904144997
20190904144998
20190904144999
20190904145000
20190904145001
20190904145002
20190904145003
20190904145004
20190904145005
20190904145006
20190904145007
20190904145008
20190904145009
20190904145010
20190904145011
20190904145012
20190904145013
20190904145014
20190904145015
20190904145016
20190904145017
20190904145018
20190904145019
20190904145020
20190904145021
20190904145022
20190904145023
20190904145024
20190904145025
20190904145026
20190904145027
20190904145028
20190904145029
20190904145030
20190904145031
20190904145032
20190904145033
20190904145034
20190904145035
20190904145036
20190904145037
20190904145038
20190904145039
20190904145040
20190904145041
20190904145042
20190904145043
20190904145044
20190904145045
20190904145046
20190904145047
20190904145048
20190904145049
20190904145050
20190904145051
20190904145052
20190904145053
20190904145054
20190904145055
20190904145056
20190904145057
20190904145058
20190904145059
20190904145060
20190904145061
20190904145062
20190904145063
20190904145064
20190904145065
20190904145066
20190904145067
20190904145068
20190904145069
20190904145070
20190904145071
20190904145072
20190904145073
20190904145074
20190904145075
20190904145076
20190904145077
20190904145078
20190904145079
20190904145080
20190904145081
20190904145082
20190904145083
20190904145084
20190904145085
20190904145086
20190904145087
20190904145088
20190904145089
20190904145090
20190904145091
20190904145092
20190904145093
20190904145094
20190904145095
20190904145096
20190904145097
20190904145098
20190904145099
20190904145100
20190904145101
20190904145102
20190904145103
20190904145104
20190904145105
20190904145106
20190904145107
20190904145108
20190904145109
20190904145110
20190904145111
20190904145112
20190904145113
20190904145114
20190904145115
20190904145116
20190904145117
20190904145118
20190904145119
20190904145120
20190904145121
20190904145122
20190904145123
20190904145124
20190904145125
20190904145126
20190904145127
20190904145128
20190904145129
20190904145130
20190904145131
20190904145132
20190904145133
20190904145134
20190904145135
20190904145136
20190904145137
20190904145138
20190904145139
20190904145140
20190904145141
20190904145142
20190904145143
20190904145144
20190904145145
20190904145146
20190904145147
20190904145148
20190904145149
20190904145150
20190904145151
20190904145152
20190904145153
20190904145154
20190904145155
20190904145156
20190904145157
20190904145158
20190904145159
20190904145160
20190904145161
20190904145162
20190904145163
20190904145164
20190904145165
20190904145166
20190904145167
20190904145168
20190904145169
20190904145170
20190904145171
20190904145172
20190904145173
20190904145174
20190904145175
20190904145176
20190904145177
20190904145178
20190904145179
20190904145180
20190904145181
20190904145182
20190904145183
20190904145184
20190904145185
20190904145186
20190904145187
20190904145188
\.


--
-- Data for Name: spree_addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_addresses (id, firstname, lastname, address1, address2, city, zipcode, phone, state_name, alternative_phone, company, state_id, country_id, created_at, updated_at, user_id, deleted_at) FROM stdin;
\.


--
-- Data for Name: spree_adjustments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_adjustments (id, source_type, source_id, adjustable_type, adjustable_id, amount, label, mandatory, eligible, created_at, updated_at, state, order_id, included) FROM stdin;
\.


--
-- Data for Name: spree_assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_assets (id, viewable_type, viewable_id, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_calculators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_calculators (id, type, calculable_type, calculable_id, created_at, updated_at, preferences, deleted_at) FROM stdin;
1	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	1	2019-09-04 14:50:05.787554+00	2019-09-04 14:50:06.045277+00	---\n:amount: 5\n:currency: AUD\n	\N
2	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	2	2019-09-04 14:50:05.911133+00	2019-09-04 14:50:06.096974+00	---\n:amount: 10\n:currency: AUD\n	\N
3	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	3	2019-09-04 14:50:05.940625+00	2019-09-04 14:50:06.083269+00	---\n:amount: 15\n:currency: AUD\n	\N
4	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	4	2019-09-04 14:50:05.968365+00	2019-09-04 14:50:06.068072+00	---\n:amount: 5\n:currency: AUD\n	\N
5	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	5	2019-09-04 14:50:06.000471+00	2019-09-04 14:50:06.110638+00	---\n:amount: 8\n:currency: EUR\n	\N
6	Spree::Calculator::DefaultTax	Spree::TaxRate	1	2019-09-04 14:50:06.174105+00	2019-09-04 14:50:06.190973+00	\N	\N
\.


--
-- Data for Name: spree_countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_countries (id, iso_name, iso, iso3, name, numcode, states_required, updated_at, zipcode_required) FROM stdin;
1	ANDORRA	AD	AND	Andorra	20	t	2019-09-04 14:49:20.118924+00	t
2	UNITED ARAB EMIRATES	AE	ARE	United Arab Emirates	784	t	2019-09-04 14:49:20.148+00	f
3	AFGHANISTAN	AF	AFG	Afghanistan	4	t	2019-09-04 14:49:20.159287+00	t
4	ANTIGUA AND BARBUDA	AG	ATG	Antigua and Barbuda	28	t	2019-09-04 14:49:20.169148+00	f
5	ANGUILLA	AI	AIA	Anguilla	660	f	2019-09-04 14:49:20.178925+00	t
6	ALBANIA	AL	ALB	Albania	8	t	2019-09-04 14:49:20.198874+00	t
7	ARMENIA	AM	ARM	Armenia	51	t	2019-09-04 14:49:20.210565+00	t
8	ANGOLA	AO	AGO	Angola	24	t	2019-09-04 14:49:20.221171+00	f
9	ANTARCTICA	AQ	ATA	Antarctica	10	f	2019-09-04 14:49:20.231594+00	t
10	ARGENTINA	AR	ARG	Argentina	32	t	2019-09-04 14:49:20.24159+00	t
11	AMERICAN SAMOA	AS	ASM	American Samoa	16	f	2019-09-04 14:49:20.250663+00	t
12	AUSTRIA	AT	AUT	Austria	40	t	2019-09-04 14:49:20.260097+00	t
13	AUSTRALIA	AU	AUS	Australia	36	t	2019-09-04 14:49:20.270151+00	t
14	ARUBA	AW	ABW	Aruba	533	f	2019-09-04 14:49:20.280582+00	f
15	ÅLAND ISLANDS	AX	ALA	Åland Islands	248	f	2019-09-04 14:49:20.290166+00	t
16	AZERBAIJAN	AZ	AZE	Azerbaijan	31	t	2019-09-04 14:49:20.301232+00	t
17	BOSNIA AND HERZEGOVINA	BA	BIH	Bosnia and Herzegovina	70	t	2019-09-04 14:49:20.312157+00	t
18	BARBADOS	BB	BRB	Barbados	52	t	2019-09-04 14:49:20.322999+00	t
19	BANGLADESH	BD	BGD	Bangladesh	50	t	2019-09-04 14:49:20.335778+00	t
20	BELGIUM	BE	BEL	Belgium	56	t	2019-09-04 14:49:20.34532+00	t
21	BURKINA FASO	BF	BFA	Burkina Faso	854	t	2019-09-04 14:49:20.354814+00	f
22	BULGARIA	BG	BGR	Bulgaria	100	t	2019-09-04 14:49:20.364739+00	t
23	BAHRAIN	BH	BHR	Bahrain	48	t	2019-09-04 14:49:20.374411+00	t
24	BURUNDI	BI	BDI	Burundi	108	t	2019-09-04 14:49:20.387652+00	f
25	BENIN	BJ	BEN	Benin	204	t	2019-09-04 14:49:20.400604+00	f
26	SAINT BARTHÉLEMY	BL	BLM	Saint Barthélemy	652	f	2019-09-04 14:49:20.410259+00	t
27	BERMUDA	BM	BMU	Bermuda	60	t	2019-09-04 14:49:20.422181+00	f
28	BRUNEI DARUSSALAM	BN	BRN	Brunei Darussalam	96	t	2019-09-04 14:49:20.432257+00	t
29	BOLIVIA, PLURINATIONAL STATE OF	BO	BOL	Bolivia, Plurinational State of	68	t	2019-09-04 14:49:20.4426+00	f
30	BONAIRE, SINT EUSTATIUS AND SABA	BQ	BES	Bonaire, Sint Eustatius and Saba	535	t	2019-09-04 14:49:20.45255+00	t
31	BRAZIL	BR	BRA	Brazil	76	t	2019-09-04 14:49:20.462703+00	t
32	BAHAMAS	BS	BHS	Bahamas	44	t	2019-09-04 14:49:20.47404+00	f
33	BHUTAN	BT	BTN	Bhutan	64	t	2019-09-04 14:49:20.484506+00	t
34	BOUVET ISLAND	BV	BVT	Bouvet Island	74	f	2019-09-04 14:49:20.494239+00	t
35	BOTSWANA	BW	BWA	Botswana	72	t	2019-09-04 14:49:20.504667+00	f
36	BELARUS	BY	BLR	Belarus	112	t	2019-09-04 14:49:20.515182+00	t
37	BELIZE	BZ	BLZ	Belize	84	t	2019-09-04 14:49:20.524912+00	f
38	CANADA	CA	CAN	Canada	124	t	2019-09-04 14:49:20.534387+00	t
39	COCOS (KEELING) ISLANDS	CC	CCK	Cocos (Keeling) Islands	166	f	2019-09-04 14:49:20.54503+00	t
40	CONGO, THE DEMOCRATIC REPUBLIC OF THE	CD	COD	Congo, The Democratic Republic of the	180	t	2019-09-04 14:49:20.55863+00	f
41	CENTRAL AFRICAN REPUBLIC	CF	CAF	Central African Republic	140	t	2019-09-04 14:49:20.569475+00	f
42	CONGO	CG	COG	Congo	178	t	2019-09-04 14:49:20.57927+00	f
43	SWITZERLAND	CH	CHE	Switzerland	756	t	2019-09-04 14:49:20.590831+00	t
44	CÔTE D'IVOIRE	CI	CIV	Côte d'Ivoire	384	t	2019-09-04 14:49:20.60161+00	f
45	COOK ISLANDS	CK	COK	Cook Islands	184	f	2019-09-04 14:49:20.611257+00	f
46	CHILE	CL	CHL	Chile	152	t	2019-09-04 14:49:20.621533+00	t
47	CAMEROON	CM	CMR	Cameroon	120	t	2019-09-04 14:49:20.631544+00	f
48	CHINA	CN	CHN	China	156	t	2019-09-04 14:49:20.641524+00	t
49	COLOMBIA	CO	COL	Colombia	170	t	2019-09-04 14:49:20.651754+00	t
50	COSTA RICA	CR	CRI	Costa Rica	188	t	2019-09-04 14:49:20.66187+00	t
51	CUBA	CU	CUB	Cuba	192	t	2019-09-04 14:49:20.67238+00	t
52	CABO VERDE	CV	CPV	Cabo Verde	132	t	2019-09-04 14:49:20.68255+00	t
53	CURAÇAO	CW	CUW	Curaçao	531	f	2019-09-04 14:49:20.692062+00	t
54	CHRISTMAS ISLAND	CX	CXR	Christmas Island	162	f	2019-09-04 14:49:20.701336+00	t
55	CYPRUS	CY	CYP	Cyprus	196	t	2019-09-04 14:49:20.71135+00	t
56	CZECHIA	CZ	CZE	Czechia	203	t	2019-09-04 14:49:20.721341+00	t
57	GERMANY	DE	DEU	Germany	276	t	2019-09-04 14:49:20.731726+00	t
58	DJIBOUTI	DJ	DJI	Djibouti	262	t	2019-09-04 14:49:20.741821+00	f
59	DENMARK	DK	DNK	Denmark	208	t	2019-09-04 14:49:20.752347+00	t
60	DOMINICA	DM	DMA	Dominica	212	t	2019-09-04 14:49:20.762254+00	f
61	DOMINICAN REPUBLIC	DO	DOM	Dominican Republic	214	t	2019-09-04 14:49:20.773582+00	t
62	ALGERIA	DZ	DZA	Algeria	12	t	2019-09-04 14:49:20.785712+00	t
63	ECUADOR	EC	ECU	Ecuador	218	t	2019-09-04 14:49:20.799835+00	t
64	ESTONIA	EE	EST	Estonia	233	t	2019-09-04 14:49:20.810251+00	t
65	EGYPT	EG	EGY	Egypt	818	t	2019-09-04 14:49:20.822735+00	t
66	WESTERN SAHARA	EH	ESH	Western Sahara	732	f	2019-09-04 14:49:20.836392+00	t
67	ERITREA	ER	ERI	Eritrea	232	t	2019-09-04 14:49:20.845945+00	f
68	SPAIN	ES	ESP	Spain	724	t	2019-09-04 14:49:20.855944+00	t
69	ETHIOPIA	ET	ETH	Ethiopia	231	t	2019-09-04 14:49:20.866119+00	t
70	FINLAND	FI	FIN	Finland	246	t	2019-09-04 14:49:20.876913+00	t
71	FIJI	FJ	FJI	Fiji	242	t	2019-09-04 14:49:20.886925+00	f
72	FALKLAND ISLANDS (MALVINAS)	FK	FLK	Falkland Islands (Malvinas)	238	f	2019-09-04 14:49:20.898393+00	t
73	MICRONESIA, FEDERATED STATES OF	FM	FSM	Micronesia, Federated States of	583	t	2019-09-04 14:49:20.910977+00	t
74	FAROE ISLANDS	FO	FRO	Faroe Islands	234	f	2019-09-04 14:49:20.920355+00	t
75	FRANCE	FR	FRA	France	250	t	2019-09-04 14:49:20.930545+00	t
76	GABON	GA	GAB	Gabon	266	t	2019-09-04 14:49:20.940912+00	t
77	UNITED KINGDOM	GB	GBR	United Kingdom	826	t	2019-09-04 14:49:20.950863+00	t
78	GRENADA	GD	GRD	Grenada	308	t	2019-09-04 14:49:20.960505+00	f
79	GEORGIA	GE	GEO	Georgia	268	t	2019-09-04 14:49:20.970943+00	t
80	FRENCH GUIANA	GF	GUF	French Guiana	254	f	2019-09-04 14:49:20.981401+00	t
81	GUERNSEY	GG	GGY	Guernsey	831	f	2019-09-04 14:49:20.990716+00	t
82	GHANA	GH	GHA	Ghana	288	t	2019-09-04 14:49:21.002671+00	f
83	GIBRALTAR	GI	GIB	Gibraltar	292	f	2019-09-04 14:49:21.011638+00	t
84	GREENLAND	GL	GRL	Greenland	304	t	2019-09-04 14:49:21.021942+00	t
85	GAMBIA	GM	GMB	Gambia	270	t	2019-09-04 14:49:21.031295+00	f
86	GUINEA	GN	GIN	Guinea	324	t	2019-09-04 14:49:21.041622+00	f
87	GUADELOUPE	GP	GLP	Guadeloupe	312	f	2019-09-04 14:49:21.051901+00	t
88	EQUATORIAL GUINEA	GQ	GNQ	Equatorial Guinea	226	t	2019-09-04 14:49:21.062106+00	f
89	GREECE	GR	GRC	Greece	300	t	2019-09-04 14:49:21.071821+00	t
90	SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS	GS	SGS	South Georgia and the South Sandwich Islands	239	f	2019-09-04 14:49:21.082501+00	t
91	GUATEMALA	GT	GTM	Guatemala	320	t	2019-09-04 14:49:21.093404+00	t
92	GUAM	GU	GUM	Guam	316	f	2019-09-04 14:49:21.103498+00	t
93	GUINEA-BISSAU	GW	GNB	Guinea-Bissau	624	t	2019-09-04 14:49:21.113793+00	t
94	GUYANA	GY	GUY	Guyana	328	t	2019-09-04 14:49:21.124384+00	f
95	HONG KONG	HK	HKG	Hong Kong	344	f	2019-09-04 14:49:21.134167+00	f
96	HEARD ISLAND AND MCDONALD ISLANDS	HM	HMD	Heard Island and McDonald Islands	334	f	2019-09-04 14:49:21.143265+00	t
97	HONDURAS	HN	HND	Honduras	340	t	2019-09-04 14:49:21.153198+00	t
98	CROATIA	HR	HRV	Croatia	191	t	2019-09-04 14:49:21.16366+00	t
99	HAITI	HT	HTI	Haiti	332	t	2019-09-04 14:49:21.174374+00	t
100	HUNGARY	HU	HUN	Hungary	348	t	2019-09-04 14:49:21.184767+00	t
101	INDONESIA	ID	IDN	Indonesia	360	t	2019-09-04 14:49:21.195423+00	t
102	IRELAND	IE	IRL	Ireland	372	t	2019-09-04 14:49:21.207177+00	f
103	ISRAEL	IL	ISR	Israel	376	t	2019-09-04 14:49:21.218783+00	t
104	ISLE OF MAN	IM	IMN	Isle of Man	833	f	2019-09-04 14:49:21.228246+00	t
105	INDIA	IN	IND	India	356	t	2019-09-04 14:49:21.239337+00	t
106	BRITISH INDIAN OCEAN TERRITORY	IO	IOT	British Indian Ocean Territory	86	f	2019-09-04 14:49:21.249456+00	t
107	IRAQ	IQ	IRQ	Iraq	368	t	2019-09-04 14:49:21.259982+00	t
108	IRAN, ISLAMIC REPUBLIC OF	IR	IRN	Iran, Islamic Republic of	364	t	2019-09-04 14:49:21.270276+00	t
109	ICELAND	IS	ISL	Iceland	352	t	2019-09-04 14:49:21.280774+00	t
110	ITALY	IT	ITA	Italy	380	t	2019-09-04 14:49:21.291148+00	t
111	JERSEY	JE	JEY	Jersey	832	f	2019-09-04 14:49:21.300802+00	t
112	JAMAICA	JM	JAM	Jamaica	388	t	2019-09-04 14:49:21.311218+00	t
113	JORDAN	JO	JOR	Jordan	400	t	2019-09-04 14:49:21.322271+00	t
114	JAPAN	JP	JPN	Japan	392	t	2019-09-04 14:49:21.334435+00	t
115	KENYA	KE	KEN	Kenya	404	t	2019-09-04 14:49:21.34623+00	t
116	KYRGYZSTAN	KG	KGZ	Kyrgyzstan	417	t	2019-09-04 14:49:21.356621+00	t
117	CAMBODIA	KH	KHM	Cambodia	116	t	2019-09-04 14:49:21.36821+00	t
118	KIRIBATI	KI	KIR	Kiribati	296	t	2019-09-04 14:49:21.382376+00	f
119	COMOROS	KM	COM	Comoros	174	t	2019-09-04 14:49:21.393623+00	f
120	SAINT KITTS AND NEVIS	KN	KNA	Saint Kitts and Nevis	659	t	2019-09-04 14:49:21.405454+00	f
121	KOREA, DEMOCRATIC PEOPLE'S REPUBLIC OF	KP	PRK	Korea, Democratic People's Republic of	408	t	2019-09-04 14:49:21.416324+00	f
122	KOREA, REPUBLIC OF	KR	KOR	Korea, Republic of	410	t	2019-09-04 14:49:21.430309+00	t
123	KUWAIT	KW	KWT	Kuwait	414	t	2019-09-04 14:49:21.440257+00	t
124	CAYMAN ISLANDS	KY	CYM	Cayman Islands	136	f	2019-09-04 14:49:21.449415+00	t
125	KAZAKHSTAN	KZ	KAZ	Kazakhstan	398	t	2019-09-04 14:49:21.460487+00	t
126	LAO PEOPLE'S DEMOCRATIC REPUBLIC	LA	LAO	Lao People's Democratic Republic	418	t	2019-09-04 14:49:21.47052+00	t
127	LEBANON	LB	LBN	Lebanon	422	t	2019-09-04 14:49:21.481256+00	t
128	SAINT LUCIA	LC	LCA	Saint Lucia	662	f	2019-09-04 14:49:21.491036+00	f
129	LIECHTENSTEIN	LI	LIE	Liechtenstein	438	t	2019-09-04 14:49:21.501223+00	t
130	SRI LANKA	LK	LKA	Sri Lanka	144	t	2019-09-04 14:49:21.511402+00	t
131	LIBERIA	LR	LBR	Liberia	430	t	2019-09-04 14:49:21.521424+00	t
132	LESOTHO	LS	LSO	Lesotho	426	t	2019-09-04 14:49:21.531631+00	t
133	LITHUANIA	LT	LTU	Lithuania	440	t	2019-09-04 14:49:21.541764+00	t
134	LUXEMBOURG	LU	LUX	Luxembourg	442	t	2019-09-04 14:49:21.552071+00	t
135	LATVIA	LV	LVA	Latvia	428	t	2019-09-04 14:49:21.564289+00	t
136	LIBYA	LY	LBY	Libya	434	t	2019-09-04 14:49:21.576454+00	f
137	MOROCCO	MA	MAR	Morocco	504	t	2019-09-04 14:49:21.591092+00	t
138	MONACO	MC	MCO	Monaco	492	t	2019-09-04 14:49:21.601187+00	t
139	MOLDOVA, REPUBLIC OF	MD	MDA	Moldova, Republic of	498	t	2019-09-04 14:49:21.580218+00	t
140	MONTENEGRO	ME	MNE	Montenegro	499	t	2019-09-04 14:49:21.592579+00	t
141	SAINT MARTIN (FRENCH PART)	MF	MAF	Saint Martin (French part)	663	f	2019-09-04 14:49:21.603203+00	t
142	MADAGASCAR	MG	MDG	Madagascar	450	t	2019-09-04 14:49:21.613272+00	t
143	MARSHALL ISLANDS	MH	MHL	Marshall Islands	584	t	2019-09-04 14:49:21.623604+00	t
144	NORTH MACEDONIA	MK	MKD	North Macedonia	807	t	2019-09-04 14:49:21.635683+00	t
145	MALI	ML	MLI	Mali	466	t	2019-09-04 14:49:21.645988+00	f
146	MYANMAR	MM	MMR	Myanmar	104	t	2019-09-04 14:49:21.655839+00	t
147	MONGOLIA	MN	MNG	Mongolia	496	t	2019-09-04 14:49:21.665972+00	t
148	MACAO	MO	MAC	Macao	446	f	2019-09-04 14:49:21.681035+00	f
149	NORTHERN MARIANA ISLANDS	MP	MNP	Northern Mariana Islands	580	f	2019-09-04 14:49:21.691339+00	t
150	MARTINIQUE	MQ	MTQ	Martinique	474	f	2019-09-04 14:49:21.700408+00	t
151	MAURITANIA	MR	MRT	Mauritania	478	t	2019-09-04 14:49:21.711392+00	f
152	MONTSERRAT	MS	MSR	Montserrat	500	f	2019-09-04 14:49:21.720739+00	t
153	MALTA	MT	MLT	Malta	470	t	2019-09-04 14:49:21.732365+00	t
154	MAURITIUS	MU	MUS	Mauritius	480	t	2019-09-04 14:49:21.742801+00	t
155	MALDIVES	MV	MDV	Maldives	462	t	2019-09-04 14:49:21.753589+00	t
156	MALAWI	MW	MWI	Malawi	454	t	2019-09-04 14:49:21.764841+00	f
157	MEXICO	MX	MEX	Mexico	484	t	2019-09-04 14:49:21.77546+00	t
158	MALAYSIA	MY	MYS	Malaysia	458	t	2019-09-04 14:49:21.786579+00	t
159	MOZAMBIQUE	MZ	MOZ	Mozambique	508	t	2019-09-04 14:49:21.796617+00	t
160	NAMIBIA	NA	NAM	Namibia	516	t	2019-09-04 14:49:21.807041+00	t
161	NEW CALEDONIA	NC	NCL	New Caledonia	540	f	2019-09-04 14:49:21.817255+00	t
162	NIGER	NE	NER	Niger	562	t	2019-09-04 14:49:21.827728+00	t
163	NORFOLK ISLAND	NF	NFK	Norfolk Island	574	f	2019-09-04 14:49:21.83726+00	t
164	NIGERIA	NG	NGA	Nigeria	566	t	2019-09-04 14:49:21.847419+00	t
165	NICARAGUA	NI	NIC	Nicaragua	558	t	2019-09-04 14:49:21.858881+00	t
166	NETHERLANDS	NL	NLD	Netherlands	528	t	2019-09-04 14:49:21.871215+00	t
167	NORWAY	NO	NOR	Norway	578	t	2019-09-04 14:49:21.881986+00	t
168	NEPAL	NP	NPL	Nepal	524	t	2019-09-04 14:49:21.893024+00	t
169	NAURU	NR	NRU	Nauru	520	t	2019-09-04 14:49:21.903667+00	f
170	NIUE	NU	NIU	Niue	570	f	2019-09-04 14:49:21.914035+00	f
171	NEW ZEALAND	NZ	NZL	New Zealand	554	t	2019-09-04 14:49:21.928023+00	t
172	OMAN	OM	OMN	Oman	512	t	2019-09-04 14:49:21.938238+00	t
173	PANAMA	PA	PAN	Panama	591	t	2019-09-04 14:49:21.949658+00	f
174	PERU	PE	PER	Peru	604	t	2019-09-04 14:49:21.96036+00	t
175	FRENCH POLYNESIA	PF	PYF	French Polynesia	258	f	2019-09-04 14:49:21.970642+00	t
176	PAPUA NEW GUINEA	PG	PNG	Papua New Guinea	598	t	2019-09-04 14:49:21.981399+00	t
177	PHILIPPINES	PH	PHL	Philippines	608	t	2019-09-04 14:49:21.992152+00	t
178	PAKISTAN	PK	PAK	Pakistan	586	t	2019-09-04 14:49:22.002968+00	t
179	POLAND	PL	POL	Poland	616	t	2019-09-04 14:49:22.012982+00	t
180	SAINT PIERRE AND MIQUELON	PM	SPM	Saint Pierre and Miquelon	666	f	2019-09-04 14:49:22.023808+00	t
181	PITCAIRN	PN	PCN	Pitcairn	612	f	2019-09-04 14:49:22.033935+00	t
182	PUERTO RICO	PR	PRI	Puerto Rico	630	f	2019-09-04 14:49:22.044205+00	t
183	PALESTINE, STATE OF	PS	PSE	Palestine, State of	275	t	2019-09-04 14:49:22.055211+00	t
184	PORTUGAL	PT	PRT	Portugal	620	t	2019-09-04 14:49:22.06603+00	t
185	PALAU	PW	PLW	Palau	585	t	2019-09-04 14:49:22.076309+00	t
186	PARAGUAY	PY	PRY	Paraguay	600	t	2019-09-04 14:49:22.086704+00	t
187	QATAR	QA	QAT	Qatar	634	t	2019-09-04 14:49:22.096877+00	f
188	RÉUNION	RE	REU	Réunion	638	f	2019-09-04 14:49:22.106885+00	t
189	ROMANIA	RO	ROU	Romania	642	t	2019-09-04 14:49:22.117316+00	t
190	SERBIA	RS	SRB	Serbia	688	t	2019-09-04 14:49:22.127624+00	t
191	RUSSIA	RU	RUS	Russia	643	t	2019-09-04 14:49:22.140382+00	t
192	RWANDA	RW	RWA	Rwanda	646	t	2019-09-04 14:49:22.150267+00	f
193	SAUDI ARABIA	SA	SAU	Saudi Arabia	682	t	2019-09-04 14:49:22.159814+00	t
194	SOLOMON ISLANDS	SB	SLB	Solomon Islands	90	t	2019-09-04 14:49:22.172382+00	f
195	SEYCHELLES	SC	SYC	Seychelles	690	t	2019-09-04 14:49:22.183277+00	f
196	SUDAN	SD	SDN	Sudan	729	t	2019-09-04 14:49:22.19404+00	t
197	SWEDEN	SE	SWE	Sweden	752	t	2019-09-04 14:49:22.204146+00	t
198	SINGAPORE	SG	SGP	Singapore	702	t	2019-09-04 14:49:22.214413+00	t
199	SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA	SH	SHN	Saint Helena, Ascension and Tristan da Cunha	654	t	2019-09-04 14:49:22.225105+00	t
200	SLOVENIA	SI	SVN	Slovenia	705	t	2019-09-04 14:49:22.239154+00	t
201	SVALBARD AND JAN MAYEN	SJ	SJM	Svalbard and Jan Mayen	744	f	2019-09-04 14:49:22.249028+00	t
202	SLOVAKIA	SK	SVK	Slovakia	703	t	2019-09-04 14:49:22.259722+00	t
203	SIERRA LEONE	SL	SLE	Sierra Leone	694	t	2019-09-04 14:49:22.269844+00	f
204	SAN MARINO	SM	SMR	San Marino	674	t	2019-09-04 14:49:22.279754+00	t
205	SENEGAL	SN	SEN	Senegal	686	t	2019-09-04 14:49:22.290523+00	t
206	SOMALIA	SO	SOM	Somalia	706	t	2019-09-04 14:49:22.301389+00	f
207	SURINAME	SR	SUR	Suriname	740	t	2019-09-04 14:49:22.31149+00	f
208	SOUTH SUDAN	SS	SSD	South Sudan	728	t	2019-09-04 14:49:22.322384+00	t
209	SAO TOME AND PRINCIPE	ST	STP	Sao Tome and Principe	678	t	2019-09-04 14:49:22.332242+00	f
210	EL SALVADOR	SV	SLV	El Salvador	222	t	2019-09-04 14:49:22.342511+00	t
211	SINT MAARTEN (DUTCH PART)	SX	SXM	Sint Maarten (Dutch part)	534	f	2019-09-04 14:49:22.351922+00	t
212	SYRIAN ARAB REPUBLIC	SY	SYR	Syrian Arab Republic	760	t	2019-09-04 14:49:22.362891+00	f
213	ESWATINI	SZ	SWZ	Eswatini	748	t	2019-09-04 14:49:22.372857+00	t
214	TURKS AND CAICOS ISLANDS	TC	TCA	Turks and Caicos Islands	796	f	2019-09-04 14:49:22.382144+00	t
215	CHAD	TD	TCD	Chad	148	t	2019-09-04 14:49:22.394457+00	t
216	FRENCH SOUTHERN TERRITORIES	TF	ATF	French Southern Territories	260	f	2019-09-04 14:49:22.403955+00	f
217	TOGO	TG	TGO	Togo	768	t	2019-09-04 14:49:22.414024+00	f
218	THAILAND	TH	THA	Thailand	764	t	2019-09-04 14:49:22.427954+00	t
219	TAJIKISTAN	TJ	TJK	Tajikistan	762	t	2019-09-04 14:49:22.437864+00	t
220	TOKELAU	TK	TKL	Tokelau	772	f	2019-09-04 14:49:22.447965+00	f
221	TIMOR-LESTE	TL	TLS	Timor-Leste	626	t	2019-09-04 14:49:22.458842+00	f
222	TURKMENISTAN	TM	TKM	Turkmenistan	795	t	2019-09-04 14:49:22.473453+00	t
223	TUNISIA	TN	TUN	Tunisia	788	t	2019-09-04 14:49:22.484478+00	t
224	TONGA	TO	TON	Tonga	776	t	2019-09-04 14:49:22.495628+00	f
225	TURKEY	TR	TUR	Turkey	792	t	2019-09-04 14:49:22.508128+00	t
226	TRINIDAD AND TOBAGO	TT	TTO	Trinidad and Tobago	780	t	2019-09-04 14:49:22.519369+00	t
227	TUVALU	TV	TUV	Tuvalu	798	t	2019-09-04 14:49:22.530807+00	f
228	TAIWAN	TW	TWN	Taiwan	158	t	2019-09-04 14:49:22.541346+00	t
229	TANZANIA, UNITED REPUBLIC OF	TZ	TZA	Tanzania, United Republic of	834	t	2019-09-04 14:49:22.551652+00	f
230	UKRAINE	UA	UKR	Ukraine	804	t	2019-09-04 14:49:22.561908+00	t
231	UGANDA	UG	UGA	Uganda	800	t	2019-09-04 14:49:22.572603+00	f
232	UNITED STATES MINOR OUTLYING ISLANDS	UM	UMI	United States Minor Outlying Islands	581	t	2019-09-04 14:49:22.582504+00	t
233	UNITED STATES	US	USA	United States	840	t	2019-09-04 14:49:22.593572+00	t
234	URUGUAY	UY	URY	Uruguay	858	t	2019-09-04 14:49:22.604628+00	t
235	UZBEKISTAN	UZ	UZB	Uzbekistan	860	t	2019-09-04 14:49:22.615235+00	t
236	HOLY SEE (VATICAN CITY STATE)	VA	VAT	Holy See (Vatican City State)	336	f	2019-09-04 14:49:22.624434+00	t
237	SAINT VINCENT AND THE GRENADINES	VC	VCT	Saint Vincent and the Grenadines	670	t	2019-09-04 14:49:22.635962+00	t
238	VENEZUELA, BOLIVARIAN REPUBLIC OF	VE	VEN	Venezuela, Bolivarian Republic of	862	t	2019-09-04 14:49:22.646301+00	t
239	VIRGIN ISLANDS, BRITISH	VG	VGB	Virgin Islands, British	92	f	2019-09-04 14:49:22.655757+00	t
240	VIRGIN ISLANDS, U.S.	VI	VIR	Virgin Islands, U.S.	850	f	2019-09-04 14:49:22.665923+00	t
241	VIETNAM	VN	VNM	Vietnam	704	t	2019-09-04 14:49:22.677283+00	t
242	VANUATU	VU	VUT	Vanuatu	548	t	2019-09-04 14:49:22.687329+00	f
243	WALLIS AND FUTUNA	WF	WLF	Wallis and Futuna	876	f	2019-09-04 14:49:22.696835+00	t
244	SAMOA	WS	WSM	Samoa	882	t	2019-09-04 14:49:22.70653+00	t
245	YEMEN	YE	YEM	Yemen	887	t	2019-09-04 14:49:22.716673+00	f
246	MAYOTTE	YT	MYT	Mayotte	175	f	2019-09-04 14:49:22.725997+00	t
247	SOUTH AFRICA	ZA	ZAF	South Africa	710	t	2019-09-04 14:49:22.735552+00	t
248	ZAMBIA	ZM	ZMB	Zambia	894	t	2019-09-04 14:49:22.745913+00	t
249	ZIMBABWE	ZW	ZWE	Zimbabwe	716	t	2019-09-04 14:49:22.755951+00	f
\.


--
-- Data for Name: spree_credit_cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_credit_cards (id, month, year, cc_type, last_digits, address_id, gateway_customer_profile_id, gateway_payment_profile_id, created_at, updated_at, name, user_id, payment_method_id, "default", deleted_at) FROM stdin;
\.


--
-- Data for Name: spree_customer_returns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_customer_returns (id, number, stock_location_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_gateways; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_gateways (id, type, name, description, active, environment, server, test_mode, created_at, updated_at, preferences) FROM stdin;
\.


--
-- Data for Name: spree_inventory_units; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_inventory_units (id, state, variant_id, order_id, shipment_id, created_at, updated_at, pending, line_item_id, quantity, original_return_item_id) FROM stdin;
\.


--
-- Data for Name: spree_line_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

-- COPY public.spree_line_items (id, variant_id, order_id, quantity, price, created_at, updated_at, currency, cost_price, tax_category_id, adjustment_total, additional_tax_total, promo_total, included_tax_total, pre_tax_amount, taxable_adjustment_total, non_taxable_adjustment_total) FROM stdin;
-- 1	1	1	2	15.99	2019-09-09 17:40:41.769668+00	2019-09-10 18:27:08.591365+00	AUD	\N	1	0.00	0.00	0.00	0.00	31.9800	0.00	0.00
-- 2	11	1	1	22.99	2019-09-10 18:26:13.37477+00	2019-09-10 18:26:13.861316+00	AUD	\N	1	0.00	0.00	0.00	0.00	22.9900	0.00	0.00
-- \.


--
-- Data for Name: spree_log_entries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_log_entries (id, source_type, source_id, details, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_oauth_access_grants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_oauth_access_grants (id, resource_owner_id, application_id, token, expires_in, redirect_uri, created_at, revoked_at, scopes) FROM stdin;
\.


--
-- Data for Name: spree_oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_oauth_access_tokens (id, resource_owner_id, application_id, token, refresh_token, expires_in, revoked_at, created_at, scopes, previous_refresh_token) FROM stdin;
1	1	\N	I9BKilufgUQaoB5aDdP4kxTXDUBkr4YYIxCD_yLVyBc	\N	\N	\N	2020-12-11 21:14:40.161866+00	\N
\.


--
-- Data for Name: spree_oauth_applications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_oauth_applications (id, name, uid, secret, redirect_uri, scopes, confidential, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_option_type_prototypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_option_type_prototypes (prototype_id, option_type_id, id) FROM stdin;
\.


--
-- Data for Name: spree_option_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_option_types (id, name, presentation, "position", created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_option_value_variants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_option_value_variants (variant_id, option_value_id, id) FROM stdin;
\.


--
-- Data for Name: spree_option_values; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_option_values (id, "position", name, presentation, option_type_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_order_promotions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_order_promotions (order_id, promotion_id, id) FROM stdin;
\.


--
-- Data for Name: spree_orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

-- COPY public.spree_orders (id, number, item_total, total, state, adjustment_total, user_id, completed_at, bill_address_id, ship_address_id, payment_total, shipment_state, payment_state, email, special_instructions, created_at, updated_at, currency, last_ip_address, created_by_id, shipment_total, additional_tax_total, promo_total, channel, included_tax_total, item_count, approver_id, approved_at, confirmation_delivered, considered_risky, token, canceled_at, canceler_id, store_id, state_lock_version, taxable_adjustment_total, non_taxable_adjustment_total) FROM stdin;
-- 1	R246115036	54.97	54.97	cart	0.00	\N	\N	\N	\N	0.00	\N	\N	\N	\N	2019-09-09 17:40:41.248188+00	2019-09-10 18:27:08.260534+00	AUD	\N	\N	0.00	0.00	0.00	spree	0.00	3	\N	\N	f	f	aeihRQ1NnX7TbfvhhtQNNg1567611578919	\N	\N	1	0	0.00	0.00
-- 2	R498993176	0.00	0.00	address	0.00	1	\N	\N	\N	0.00	\N	\N	spree@example.com	\N	2020-12-11 21:04:18.82783+00	2020-12-14 21:11:28.335716+00	AUD	172.15.7.5	1	0.00	0.00	0.00	spree	0.00	0	\N	\N	f	f	wUHlJK_7BYB7urh1t85kQA1607720618544	\N	\N	1	0	0.00	0.00
-- \.


--
-- Data for Name: spree_payment_capture_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_payment_capture_events (id, amount, payment_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_payment_methods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_payment_methods (id, type, name, description, active, deleted_at, created_at, updated_at, display_on, auto_capture, preferences, "position") FROM stdin;
1	Spree::PaymentMethod::StoreCredit	Store Credit	Store Credit	t	\N	2019-09-04 14:49:14.666905+00	2019-09-04 14:49:14.666905+00	back_end	\N	\N	1
2	Spree::Gateway::Bogus	Credit Card	Bogus payment gateway.	t	\N	2019-09-04 14:50:05.678039+00	2019-09-04 14:50:05.678039+00	both	\N	---\n:server: test\n:test_mode: true\n	2
3	Spree::PaymentMethod::Check	Check	Pay by check.	t	\N	2019-09-04 14:50:05.710336+00	2019-09-04 14:50:05.710336+00	both	\N	\N	3
\.


--
-- Data for Name: spree_payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_payments (id, amount, order_id, source_type, source_id, payment_method_id, state, response_code, avs_response, created_at, updated_at, number, cvv_response_code, cvv_response_message) FROM stdin;
\.


--
-- Data for Name: spree_preferences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_preferences (id, value, key, created_at, updated_at) FROM stdin;
1	--- 233\n...\n	spree/app_configuration/default_country_id	2019-09-04 14:49:22.769546+00	2019-09-04 14:49:22.769546+00
2	--- AUD\n...\n	spree/app_configuration/currency	2019-09-04 14:50:06.205842+00	2019-09-04 14:50:07.945741+00
\.


--
-- Data for Name: spree_prices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_prices (id, variant_id, amount, currency, deleted_at, created_at, updated_at) FROM stdin;
1	1	15.99	AUD	\N	2019-09-04 14:50:06.44165+00	2019-09-04 14:50:06.44165+00
2	1	14.00	EUR	\N	2019-09-04 14:50:06.605495+00	2019-09-04 14:50:06.605495+00
3	2	22.99	AUD	\N	2019-09-04 14:50:06.653316+00	2019-09-04 14:50:06.653316+00
4	2	19.00	EUR	\N	2019-09-04 14:50:06.706691+00	2019-09-04 14:50:06.706691+00
5	3	19.99	AUD	\N	2019-09-04 14:50:06.762206+00	2019-09-04 14:50:06.762206+00
6	3	16.00	EUR	\N	2019-09-04 14:50:06.813457+00	2019-09-04 14:50:06.813457+00
7	4	19.99	AUD	\N	2019-09-04 14:50:06.855975+00	2019-09-04 14:50:06.855975+00
8	4	16.00	EUR	\N	2019-09-04 14:50:06.906867+00	2019-09-04 14:50:06.906867+00
9	5	19.99	AUD	\N	2019-09-04 14:50:06.95263+00	2019-09-04 14:50:06.95263+00
10	5	16.00	EUR	\N	2019-09-04 14:50:06.999592+00	2019-09-04 14:50:06.999592+00
11	6	19.99	AUD	\N	2019-09-04 14:50:07.083394+00	2019-09-04 14:50:07.083394+00
12	6	16.00	EUR	\N	2019-09-04 14:50:07.128439+00	2019-09-04 14:50:07.128439+00
13	7	19.99	AUD	\N	2019-09-04 14:50:07.169031+00	2019-09-04 14:50:07.169031+00
14	7	16.00	EUR	\N	2019-09-04 14:50:07.218742+00	2019-09-04 14:50:07.218742+00
15	8	19.99	AUD	\N	2019-09-04 14:50:07.258278+00	2019-09-04 14:50:07.258278+00
16	8	16.00	EUR	\N	2019-09-04 14:50:07.309312+00	2019-09-04 14:50:07.309312+00
17	9	19.99	AUD	\N	2019-09-04 14:50:07.346461+00	2019-09-04 14:50:07.346461+00
18	9	16.00	EUR	\N	2019-09-04 14:50:07.393778+00	2019-09-04 14:50:07.393778+00
19	10	15.99	AUD	\N	2019-09-04 14:50:07.437452+00	2019-09-04 14:50:07.437452+00
20	10	14.00	EUR	\N	2019-09-04 14:50:07.491394+00	2019-09-04 14:50:07.491394+00
21	11	22.99	AUD	\N	2019-09-04 14:50:07.53193+00	2019-09-04 14:50:07.53193+00
22	11	19.00	EUR	\N	2019-09-04 14:50:07.579712+00	2019-09-04 14:50:07.579712+00
23	12	13.99	AUD	\N	2019-09-04 14:50:07.617657+00	2019-09-04 14:50:07.617657+00
24	12	12.00	EUR	\N	2019-09-04 14:50:07.664795+00	2019-09-04 14:50:07.664795+00
25	13	16.99	AUD	\N	2019-09-04 14:50:07.703482+00	2019-09-04 14:50:07.703482+00
26	13	14.00	EUR	\N	2019-09-04 14:50:07.750532+00	2019-09-04 14:50:07.750532+00
27	14	16.99	AUD	\N	2019-09-04 14:50:07.791452+00	2019-09-04 14:50:07.791452+00
28	14	14.00	EUR	\N	2019-09-04 14:50:07.836708+00	2019-09-04 14:50:07.836708+00
29	15	13.99	AUD	\N	2019-09-04 14:50:07.876598+00	2019-09-04 14:50:07.876598+00
30	15	12.00	EUR	\N	2019-09-04 14:50:07.924115+00	2019-09-04 14:50:07.924115+00
\.


--
-- Data for Name: spree_product_option_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_product_option_types (id, "position", product_id, option_type_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_product_promotion_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_product_promotion_rules (product_id, promotion_rule_id, id) FROM stdin;
\.


--
-- Data for Name: spree_product_properties; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_product_properties (id, value, product_id, property_id, created_at, updated_at, "position") FROM stdin;
\.


--
-- Data for Name: spree_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title, discontinue_on) FROM stdin;
1	Datadog Tote	Ipsum qui excepturi ratione earum. Nam eaque laborum asperiores consequatur eligendi odio. Vero fuga id repellendus recusandae qui.	2019-09-04 14:50:06.322341+00	\N	datadog-tote	\N	\N	1	1	2019-09-04 14:50:06.432015+00	2020-12-11 21:37:30.227357+00	t	\N	\N
2	Datadog Bag	Accusamus occaecati incidunt accusantium voluptatum. Voluptates nostrum magnam facere consectetur. Non aut labore ad veniam dolores quisquam. Quas vitae sit quia perspiciatis officiis sapiente. Error quo aut sequi rerum dolore.	2019-09-04 14:50:06.640163+00	\N	datadog-bag	\N	\N	1	1	2019-09-04 14:50:06.646888+00	2020-12-14 21:11:37.167721+00	t	\N	\N
3	Datadog Baseball Jersey	Officiis soluta beatae dolorem rem. Ea similique odio quia libero molestiae. Ex ipsum dolorum modi ipsa adipisci voluptatem ea. Voluptas accusamus dolores dolorem qui beatae. Odio autem quo officiis vero molestias.	2019-09-04 14:50:06.74758+00	\N	datadog-baseball-jersey	\N	\N	1	1	2019-09-04 14:50:06.756322+00	2020-12-11 21:37:30.23643+00	t	\N	\N
4	Datadog Jr. Spaghetti	Et unde consequuntur omnis maiores natus debitis. Et sint temporibus commodi dolorum voluptatem velit. Ad quis asperiores nobis harum. Eveniet est rerum earum aliquid consequatur voluptas.	2019-09-04 14:50:06.843549+00	\N	datadog-jr-spaghetti	\N	\N	1	1	2019-09-04 14:50:06.85064+00	2020-12-11 21:37:30.241862+00	t	\N	\N
5	Datadog Ringer T-Shirt	Eveniet sint similique fugit eum. Repellat est hic aliquid iusto officiis sunt cumque nulla. Aperiam reprehenderit maiores debitis perspiciatis voluptas assumenda.	2019-09-04 14:50:06.939224+00	\N	datadog-ringer-t-shirt	\N	\N	1	1	2019-09-04 14:50:06.945704+00	2020-12-11 21:37:30.245794+00	t	\N	\N
6	Apache Baseball Jersey	Magni deserunt similique autem rerum vitae occaecati excepturi. Harum et pariatur qui occaecati in. Voluptatem minima quo sint pariatur voluptatem odit. Illo praesentium ad quos voluptatibus rerum maxime sunt quo.	2019-09-04 14:50:07.071275+00	\N	apache-baseball-jersey	\N	\N	1	1	2019-09-04 14:50:07.07805+00	2020-12-11 21:37:30.249964+00	t	\N	\N
7	Spree Baseball Jersey	Dicta dolorem ut odio repellat quia aut et qui. Minus dolorem est perspiciatis ipsum ducimus consequatur. Incidunt enim molestias sed assumenda fuga. Suscipit ea omnis cupiditate quia excepturi est.	2019-09-04 14:50:07.158241+00	\N	spree-baseball-jersey	\N	\N	1	1	2019-09-04 14:50:07.164341+00	2020-12-11 21:37:30.256414+00	t	\N	\N
8	Spree Jr. Spaghetti	Est deleniti a voluptas minus. Aut esse aperiam qui harum eaque quam et ut. Eius eum magni est rerum. Autem numquam eveniet est impedit.	2019-09-04 14:50:07.245992+00	\N	spree-jr-spaghetti	\N	\N	1	1	2019-09-04 14:50:07.253276+00	2020-12-11 21:37:30.26225+00	t	\N	\N
9	Spree Ringer T-Shirt	Blanditiis expedita ex ad esse soluta tempora. Vitae dolorem nam iste quibAUDam sit amet sed aspernatur. Tempora amet vel minima quae alias culpa fugiat ullam.	2019-09-04 14:50:07.33554+00	\N	spree-ringer-t-shirt	\N	\N	1	1	2019-09-04 14:50:07.341768+00	2020-12-11 21:37:30.266475+00	t	\N	\N
10	Spree Tote	Vero distinctio ipsa deserunt enim nobis quisquam voluptatum porro. Iusto dolor laborum dolorum totam unde ipsum illo. Sapiente dolorum ut numquam ipsam et autem illo. Illo dolores architecto quis eius occaecati ad dolorem soluta. Assumenda et beatae sint ducimus unde magni sed.	2019-09-04 14:50:07.426345+00	\N	spree-tote	\N	\N	1	1	2019-09-04 14:50:07.432855+00	2020-12-11 21:37:30.270757+00	t	\N	\N
11	Spree Bag	Quae odit cum ex earum quas aut consequatur. Molestias dolores nemo saepe corporis. Quo nihil culpa molestiae dignissimos. Quia debitis id accusamus quis similique error. Qui sint dolorum est dolores.	2019-09-04 14:50:07.520958+00	\N	spree-bag	\N	\N	1	1	2019-09-04 14:50:07.527098+00	2020-12-11 21:37:30.274825+00	t	\N	\N
12	Datadog Mug	Explicabo blanditiis et occaecati iusto et ab voluptatem. Labore unde qui doloribus et repellat eos. Perferendis mollitia accusamus modi doloremque.	2019-09-04 14:50:07.607153+00	\N	datadog-mug	\N	\N	\N	1	2019-09-04 14:50:07.61312+00	2020-12-11 21:37:30.278741+00	t	\N	\N
13	Datadog Stein	Amet enim vero nihil reiciendis ut dolor nihil. Voluptatem voluptatem hic qui rerum voluptatum harum non fuga. Inventore molestiae amet officiis est veritatis et error consectetur.	2019-09-04 14:50:07.691872+00	\N	datadog-stein	\N	\N	\N	1	2019-09-04 14:50:07.698852+00	2020-12-11 21:37:30.282297+00	t	\N	\N
14	Monitoring Stein	Quidem est praesentium omnis quis. Modi aut sint vitae enim tempore similique veniam. Voluptatum provident tempore sed dolorem adipisci vel. Nostrum quaerat aspernatur eveniet consectetur vel ipsa qui. Eius assumenda voluptatibus quis aliquam quae ut.	2019-09-04 14:50:07.780038+00	\N	monitoring-stein	\N	\N	\N	1	2019-09-04 14:50:07.786561+00	2020-12-11 21:37:30.286065+00	t	\N	\N
15	Monitoring Mug	Sunt cupiditate nihil eos illum necessitatibus voluptatibus quo. Fugit praesentium dolorem voluptatem odit. Eos qui quia culpa molestiae ipsam. Voluptas eligendi deleniti dolorem aut suscipit debitis.	2019-09-04 14:50:07.863691+00	\N	monitoring-mug	\N	\N	\N	1	2019-09-04 14:50:07.871738+00	2020-12-11 21:37:30.291252+00	t	\N	\N
\.


--
-- Data for Name: spree_products_taxons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_products_taxons (product_id, taxon_id, id, "position") FROM stdin;
1	3	1	1
2	3	2	2
10	3	3	3
11	3	4	4
12	4	5	1
13	4	6	2
14	4	7	3
15	4	8	4
4	6	9	1
8	6	10	2
\.


--
-- Data for Name: spree_promotion_action_line_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_action_line_items (id, promotion_action_id, variant_id, quantity) FROM stdin;
\.


--
-- Data for Name: spree_promotion_actions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_actions (id, promotion_id, "position", type, deleted_at) FROM stdin;
\.


--
-- Data for Name: spree_promotion_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_categories (id, name, created_at, updated_at, code) FROM stdin;
\.


--
-- Data for Name: spree_promotion_rule_taxons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_rule_taxons (id, taxon_id, promotion_rule_id) FROM stdin;
\.


--
-- Data for Name: spree_promotion_rule_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_rule_users (user_id, promotion_rule_id, id) FROM stdin;
\.


--
-- Data for Name: spree_promotion_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_rules (id, promotion_id, user_id, product_group_id, type, created_at, updated_at, code, preferences) FROM stdin;
\.


--
-- Data for Name: spree_promotions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotions (id, description, expires_at, starts_at, name, type, usage_limit, match_policy, code, advertise, path, created_at, updated_at, promotion_category_id) FROM stdin;
\.


--
-- Data for Name: spree_properties; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_properties (id, name, presentation, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_property_prototypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_property_prototypes (prototype_id, property_id, id) FROM stdin;
\.


--
-- Data for Name: spree_prototype_taxons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_prototype_taxons (id, taxon_id, prototype_id) FROM stdin;
\.


--
-- Data for Name: spree_prototypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_prototypes (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_refund_reasons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_refund_reasons (id, name, active, mutable, created_at, updated_at) FROM stdin;
1	Return processing	t	f	2019-09-04 14:49:13.748421+00	2019-09-04 14:49:13.748421+00
\.


--
-- Data for Name: spree_refunds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_refunds (id, payment_id, amount, transaction_id, created_at, updated_at, refund_reason_id, reimbursement_id) FROM stdin;
\.


--
-- Data for Name: spree_reimbursement_credits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_reimbursement_credits (id, amount, reimbursement_id, creditable_id, creditable_type) FROM stdin;
\.


--
-- Data for Name: spree_reimbursement_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_reimbursement_types (id, name, active, mutable, created_at, updated_at, type) FROM stdin;
1	original	t	t	2019-09-04 14:49:13.9142+00	2019-09-04 14:49:13.997203+00	Spree::ReimbursementType::OriginalPayment
\.


--
-- Data for Name: spree_reimbursements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_reimbursements (id, number, reimbursement_status, customer_return_id, order_id, total, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_return_authorization_reasons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_return_authorization_reasons (id, name, active, mutable, created_at, updated_at) FROM stdin;
1	Better price available	t	t	2019-09-04 14:49:13.658481+00	2019-09-04 14:49:13.658481+00
2	Missed estimated delivery date	t	t	2019-09-04 14:49:13.660504+00	2019-09-04 14:49:13.660504+00
3	Missing parts or accessories	t	t	2019-09-04 14:49:13.662138+00	2019-09-04 14:49:13.662138+00
4	Damaged/Defective	t	t	2019-09-04 14:49:13.663835+00	2019-09-04 14:49:13.663835+00
5	Different from what was ordered	t	t	2019-09-04 14:49:13.665411+00	2019-09-04 14:49:13.665411+00
6	Different from description	t	t	2019-09-04 14:49:13.667201+00	2019-09-04 14:49:13.667201+00
7	No longer needed/wanted	t	t	2019-09-04 14:49:13.668847+00	2019-09-04 14:49:13.668847+00
8	Accidental order	t	t	2019-09-04 14:49:13.670605+00	2019-09-04 14:49:13.670605+00
9	Unauthorized purchase	t	t	2019-09-04 14:49:13.672264+00	2019-09-04 14:49:13.672264+00
\.


--
-- Data for Name: spree_return_authorizations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_return_authorizations (id, number, state, order_id, memo, created_at, updated_at, stock_location_id, return_authorization_reason_id) FROM stdin;
\.


--
-- Data for Name: spree_return_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_return_items (id, return_authorization_id, inventory_unit_id, exchange_variant_id, created_at, updated_at, pre_tax_amount, included_tax_total, additional_tax_total, reception_status, acceptance_status, customer_return_id, reimbursement_id, acceptance_status_errors, preferred_reimbursement_type_id, override_reimbursement_type_id, resellable) FROM stdin;
\.


--
-- Data for Name: spree_role_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_role_users (role_id, user_id, id) FROM stdin;
1	1	1
\.


--
-- Data for Name: spree_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_roles (id, name) FROM stdin;
1	admin
2	user
\.


--
-- Data for Name: spree_shipments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipments (id, tracking, number, cost, shipped_at, order_id, address_id, state, created_at, updated_at, stock_location_id, adjustment_total, additional_tax_total, promo_total, included_tax_total, pre_tax_amount, taxable_adjustment_total, non_taxable_adjustment_total) FROM stdin;
\.


--
-- Data for Name: spree_shipping_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipping_categories (id, name, created_at, updated_at) FROM stdin;
1	Default	2019-09-04 14:49:12.52312+00	2019-09-04 14:49:12.52312+00
\.


--
-- Data for Name: spree_shipping_method_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipping_method_categories (id, shipping_method_id, shipping_category_id, created_at, updated_at) FROM stdin;
1	1	1	2019-09-04 14:50:05.897187+00	2019-09-04 14:50:05.897187+00
2	2	1	2019-09-04 14:50:05.927512+00	2019-09-04 14:50:05.927512+00
3	3	1	2019-09-04 14:50:05.958568+00	2019-09-04 14:50:05.958568+00
4	4	1	2019-09-04 14:50:05.989214+00	2019-09-04 14:50:05.989214+00
5	5	1	2019-09-04 14:50:06.029706+00	2019-09-04 14:50:06.029706+00
\.


--
-- Data for Name: spree_shipping_method_zones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipping_method_zones (shipping_method_id, zone_id, id) FROM stdin;
1	2	1
2	2	2
3	2	3
4	1	4
5	1	5
\.


--
-- Data for Name: spree_shipping_methods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipping_methods (id, name, display_on, deleted_at, created_at, updated_at, tracking_url, admin_name, tax_category_id, code) FROM stdin;
1	UPS Ground (AUD)	both	\N	2019-09-04 14:50:05.893513+00	2019-09-04 14:50:05.893513+00	\N	\N	\N	\N
2	UPS Two Day (AUD)	both	\N	2019-09-04 14:50:05.92387+00	2019-09-04 14:50:05.92387+00	\N	\N	\N	\N
3	UPS One Day (AUD)	both	\N	2019-09-04 14:50:05.952883+00	2019-09-04 14:50:05.952883+00	\N	\N	\N	\N
4	UPS Ground (EU)	both	\N	2019-09-04 14:50:05.984384+00	2019-09-04 14:50:05.984384+00	\N	\N	\N	\N
5	UPS Ground (EUR)	both	\N	2019-09-04 14:50:06.021457+00	2019-09-04 14:50:06.021457+00	\N	\N	\N	\N
\.


--
-- Data for Name: spree_shipping_rates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipping_rates (id, shipment_id, shipping_method_id, selected, cost, created_at, updated_at, tax_rate_id) FROM stdin;
\.


--
-- Data for Name: spree_state_changes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_state_changes (id, name, previous_state, stateful_id, user_id, stateful_type, next_state, created_at, updated_at) FROM stdin;
1	order	cart	2	1	Spree::Order	address	2020-12-14 21:11:23.490538+00	2020-12-14 21:11:23.490538+00
\.


--
-- Data for Name: spree_states; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_states (id, name, abbr, country_id, updated_at) FROM stdin;
1	Canillo	02	1	2019-09-04 14:49:22.897363+00
2	Encamp	03	1	2019-09-04 14:49:22.908614+00
3	La Massana	04	1	2019-09-04 14:49:22.917954+00
4	Ordino	05	1	2019-09-04 14:49:22.92724+00
5	Sant Julià de Lòria	06	1	2019-09-04 14:49:22.936916+00
6	Andorra la Vella	07	1	2019-09-04 14:49:22.946216+00
7	Escaldes-Engordany	08	1	2019-09-04 14:49:22.955252+00
8	'Ajmān	AJ	2	2019-09-04 14:49:22.965025+00
9	Abū Ȥaby [Abu Dhabi]	AZ	2	2019-09-04 14:49:22.973673+00
10	Dubayy	DU	2	2019-09-04 14:49:22.982681+00
11	Al Fujayrah	FU	2	2019-09-04 14:49:22.991793+00
12	Ra’s al Khaymah	RK	2	2019-09-04 14:49:23.001023+00
13	Ash Shāriqah	SH	2	2019-09-04 14:49:23.010045+00
14	Umm al Qaywayn	UQ	2	2019-09-04 14:49:23.018774+00
15	Balkh	BAL	3	2019-09-04 14:49:23.027787+00
16	Bāmyān	BAM	3	2019-09-04 14:49:23.037048+00
17	Bādghīs	BDG	3	2019-09-04 14:49:23.046491+00
18	Badakhshān	BDS	3	2019-09-04 14:49:23.054789+00
19	Baghlān	BGL	3	2019-09-04 14:49:23.063374+00
20	Dāykundī	DAY	3	2019-09-04 14:49:23.072923+00
21	Farāh	FRA	3	2019-09-04 14:49:23.082633+00
22	Fāryāb	FYB	3	2019-09-04 14:49:23.091557+00
23	Ghaznī	GHA	3	2019-09-04 14:49:23.101048+00
24	Ghōr	GHO	3	2019-09-04 14:49:23.109228+00
25	Helmand	HEL	3	2019-09-04 14:49:23.117231+00
26	Herāt	HER	3	2019-09-04 14:49:23.125254+00
27	Jowzjān	JOW	3	2019-09-04 14:49:23.1345+00
28	Kābul	KAB	3	2019-09-04 14:49:23.143498+00
29	Kandahār	KAN	3	2019-09-04 14:49:23.15242+00
30	Kāpīsā	KAP	3	2019-09-04 14:49:23.161532+00
31	Kunduz	KDZ	3	2019-09-04 14:49:23.172093+00
32	Khōst	KHO	3	2019-09-04 14:49:23.181621+00
33	Kunar	KNR	3	2019-09-04 14:49:23.190015+00
34	Laghmān	LAG	3	2019-09-04 14:49:23.199169+00
35	Lōgar	LOG	3	2019-09-04 14:49:23.207501+00
36	Nangarhār	NAN	3	2019-09-04 14:49:23.215974+00
37	Nīmrōz	NIM	3	2019-09-04 14:49:23.224794+00
38	Nūristān	NUR	3	2019-09-04 14:49:23.233488+00
39	Panjshayr	PAN	3	2019-09-04 14:49:23.242236+00
40	Parwān	PAR	3	2019-09-04 14:49:23.250769+00
41	Paktiyā	PIA	3	2019-09-04 14:49:23.259556+00
42	Paktīkā	PKA	3	2019-09-04 14:49:23.268085+00
43	Samangān	SAM	3	2019-09-04 14:49:23.276188+00
44	Sar-e Pul	SAR	3	2019-09-04 14:49:23.284527+00
45	Takhār	TAK	3	2019-09-04 14:49:23.292875+00
46	Uruzgān	URU	3	2019-09-04 14:49:23.301669+00
47	Wardak	WAR	3	2019-09-04 14:49:23.310342+00
48	Zābul	ZAB	3	2019-09-04 14:49:23.318932+00
49	Saint George	03	4	2019-09-04 14:49:23.327641+00
50	Saint John	04	4	2019-09-04 14:49:23.335874+00
51	Saint Mary	05	4	2019-09-04 14:49:23.344734+00
52	Saint Paul	06	4	2019-09-04 14:49:23.353722+00
53	Saint Peter	07	4	2019-09-04 14:49:23.362776+00
54	Saint Philip	08	4	2019-09-04 14:49:23.371813+00
55	Barbuda	10	4	2019-09-04 14:49:23.380624+00
56	Redonda	11	4	2019-09-04 14:49:23.389982+00
57	Berat	01	6	2019-09-04 14:49:23.401101+00
58	Durrës	02	6	2019-09-04 14:49:23.414157+00
59	Elbasan	03	6	2019-09-04 14:49:23.423475+00
60	Fier	04	6	2019-09-04 14:49:23.432062+00
61	Gjirokastër	05	6	2019-09-04 14:49:23.440464+00
62	Korçë	06	6	2019-09-04 14:49:23.449984+00
63	Kukës	07	6	2019-09-04 14:49:23.459068+00
64	Lezhë	08	6	2019-09-04 14:49:23.468016+00
65	Dibër	09	6	2019-09-04 14:49:23.477262+00
66	Shkodër	10	6	2019-09-04 14:49:23.485336+00
67	Tiranë	11	6	2019-09-04 14:49:23.493718+00
68	Vlorë	12	6	2019-09-04 14:49:23.506127+00
69	Aragacotn	AG	7	2019-09-04 14:49:23.515819+00
70	Ararat	AR	7	2019-09-04 14:49:23.524756+00
71	Armavir	AV	7	2019-09-04 14:49:23.53438+00
72	Erevan	ER	7	2019-09-04 14:49:23.543399+00
73	Gegarkunik'	GR	7	2019-09-04 14:49:23.551816+00
74	Kotayk'	KT	7	2019-09-04 14:49:23.559848+00
75	Lory	LO	7	2019-09-04 14:49:23.569031+00
76	Sirak	SH	7	2019-09-04 14:49:23.578195+00
77	Syunik'	SU	7	2019-09-04 14:49:23.586745+00
78	Tavus	TV	7	2019-09-04 14:49:23.595345+00
79	Vayoc Jor	VD	7	2019-09-04 14:49:23.605633+00
80	Bengo	BGO	8	2019-09-04 14:49:23.614456+00
81	Benguela	BGU	8	2019-09-04 14:49:23.623233+00
82	Bié	BIE	8	2019-09-04 14:49:23.632144+00
83	Cabinda	CAB	8	2019-09-04 14:49:23.640468+00
84	Cuando-Cubango	CCU	8	2019-09-04 14:49:23.648895+00
85	Cunene	CNN	8	2019-09-04 14:49:23.657288+00
86	Cuanza Norte	CNO	8	2019-09-04 14:49:23.665458+00
87	Cuanza Sul	CUS	8	2019-09-04 14:49:23.674238+00
88	Huambo	HUA	8	2019-09-04 14:49:23.682379+00
89	Huíla	HUI	8	2019-09-04 14:49:23.692386+00
90	Lunda Norte	LNO	8	2019-09-04 14:49:23.705203+00
91	Lunda Sul	LSU	8	2019-09-04 14:49:23.714263+00
92	Luanda	LUA	8	2019-09-04 14:49:23.723646+00
93	Malange	MAL	8	2019-09-04 14:49:23.731878+00
94	Moxico	MOX	8	2019-09-04 14:49:23.740321+00
95	Namibe	NAM	8	2019-09-04 14:49:23.748698+00
96	Uíge	UIG	8	2019-09-04 14:49:23.759785+00
97	Zaire	ZAI	8	2019-09-04 14:49:23.768797+00
98	Salta	A	10	2019-09-04 14:49:23.778233+00
99	Buenos Aires	B	10	2019-09-04 14:49:23.786744+00
100	Ciudad Autónoma de Buenos Aires	C	10	2019-09-04 14:49:23.795871+00
101	San Luis	D	10	2019-09-04 14:49:23.804817+00
102	Entre Rios	E	10	2019-09-04 14:49:23.813471+00
103	Santiago del Estero	G	10	2019-09-04 14:49:23.821597+00
104	Chaco	H	10	2019-09-04 14:49:23.830347+00
105	San Juan	J	10	2019-09-04 14:49:23.839066+00
106	Catamarca	K	10	2019-09-04 14:49:23.847764+00
107	La Pampa	L	10	2019-09-04 14:49:23.857112+00
108	Mendoza	M	10	2019-09-04 14:49:23.867658+00
109	Misiones	N	10	2019-09-04 14:49:23.876153+00
110	Formosa	P	10	2019-09-04 14:49:23.884343+00
111	Neuquen	Q	10	2019-09-04 14:49:23.89345+00
112	Rio Negro	R	10	2019-09-04 14:49:23.90251+00
113	Santa Fe	S	10	2019-09-04 14:49:23.910617+00
114	Tucuman	T	10	2019-09-04 14:49:23.919732+00
115	Chubut	U	10	2019-09-04 14:49:23.928744+00
116	Tierra del Fuego	V	10	2019-09-04 14:49:23.938801+00
117	Corrientes	W	10	2019-09-04 14:49:23.947683+00
118	Cordoba	X	10	2019-09-04 14:49:23.956177+00
119	Jujuy	Y	10	2019-09-04 14:49:23.964464+00
120	Santa Cruz	Z	10	2019-09-04 14:49:23.972953+00
121	La Rioja	F	10	2019-09-04 14:49:23.98152+00
122	Burgenland	1	12	2019-09-04 14:49:23.994426+00
123	Kärnten	2	12	2019-09-04 14:49:24.003309+00
124	Niederösterreich	3	12	2019-09-04 14:49:24.012469+00
125	Oberösterreich	4	12	2019-09-04 14:49:24.021005+00
126	Salzburg	5	12	2019-09-04 14:49:24.029819+00
127	Steiermark	6	12	2019-09-04 14:49:24.037959+00
128	Tirol	7	12	2019-09-04 14:49:24.046242+00
129	Vorarlberg	8	12	2019-09-04 14:49:24.054217+00
130	Wien	9	12	2019-09-04 14:49:24.062466+00
131	Australian Capital Territory	ACT	13	2019-09-04 14:49:24.071981+00
132	New South Wales	NSW	13	2019-09-04 14:49:24.080251+00
133	Northern Territory	NT	13	2019-09-04 14:49:24.089547+00
134	Queensland	QLD	13	2019-09-04 14:49:24.098443+00
135	South Australia	SA	13	2019-09-04 14:49:24.108519+00
136	Tasmania	TAS	13	2019-09-04 14:49:24.117265+00
137	Victoria	VIC	13	2019-09-04 14:49:24.12569+00
138	Western Australia	WA	13	2019-09-04 14:49:24.134085+00
139	Abşeron	ABS	16	2019-09-04 14:49:24.143048+00
140	Ağstafa	AGA	16	2019-09-04 14:49:24.151978+00
141	Ağcabədi	AGC	16	2019-09-04 14:49:24.160317+00
142	Ağdam	AGM	16	2019-09-04 14:49:24.169796+00
143	Ağdaş	AGS	16	2019-09-04 14:49:24.179078+00
144	Ağsu	AGU	16	2019-09-04 14:49:24.187701+00
145	Astara	AST	16	2019-09-04 14:49:24.196898+00
146	Bakı	BA	16	2019-09-04 14:49:24.205356+00
147	Balakən	BAL	16	2019-09-04 14:49:24.214176+00
148	Bərdə	BAR	16	2019-09-04 14:49:24.222419+00
149	Beyləqan	BEY	16	2019-09-04 14:49:24.231769+00
150	Biləsuvar	BIL	16	2019-09-04 14:49:24.240598+00
151	Cəbrayıl	CAB	16	2019-09-04 14:49:24.249168+00
152	Cəlilabab	CAL	16	2019-09-04 14:49:24.25785+00
153	Daşkəsən	DAS	16	2019-09-04 14:49:24.267554+00
154	Füzuli	FUZ	16	2019-09-04 14:49:24.276531+00
155	Gəncə	GA	16	2019-09-04 14:49:24.285358+00
156	Gədəbəy	GAD	16	2019-09-04 14:49:24.293904+00
157	Goranboy	GOR	16	2019-09-04 14:49:24.303346+00
158	Göyçay	GOY	16	2019-09-04 14:49:24.312204+00
159	Göygöl	GYG	16	2019-09-04 14:49:24.320893+00
160	Hacıqabul	HAC	16	2019-09-04 14:49:24.329279+00
161	İmişli	IMI	16	2019-09-04 14:49:24.337727+00
162	İsmayıllı	ISM	16	2019-09-04 14:49:24.346734+00
163	Kəlbəcər	KAL	16	2019-09-04 14:49:24.356205+00
164	Kürdəmir	KUR	16	2019-09-04 14:49:24.364598+00
165	Lənkəran	LA	16	2019-09-04 14:49:24.373916+00
166	Laçın	LAC	16	2019-09-04 14:49:24.383674+00
167	Lerik	LER	16	2019-09-04 14:49:24.46688+00
168	Masallı	MAS	16	2019-09-04 14:49:24.477733+00
169	Mingəçevir	MI	16	2019-09-04 14:49:24.486555+00
170	Naftalan	NA	16	2019-09-04 14:49:24.496284+00
171	Neftçala	NEF	16	2019-09-04 14:49:24.505824+00
172	Naxçıvan	NX	16	2019-09-04 14:49:24.514067+00
173	Oğuz	OGU	16	2019-09-04 14:49:24.522259+00
174	Qəbələ	QAB	16	2019-09-04 14:49:24.531213+00
175	Qax	QAX	16	2019-09-04 14:49:24.540165+00
176	Qazax	QAZ	16	2019-09-04 14:49:24.548597+00
177	Quba	QBA	16	2019-09-04 14:49:24.557626+00
178	Qubadlı	QBI	16	2019-09-04 14:49:24.567072+00
179	Qobustan	QOB	16	2019-09-04 14:49:24.575431+00
180	Qusar	QUS	16	2019-09-04 14:49:24.584392+00
181	Şəki	SA	16	2019-09-04 14:49:24.592587+00
182	Sabirabad	SAB	16	2019-09-04 14:49:24.601417+00
183	Salyan	SAL	16	2019-09-04 14:49:24.615402+00
184	Saatlı	SAT	16	2019-09-04 14:49:24.625532+00
185	Şabran	SBN	16	2019-09-04 14:49:24.63436+00
186	Siyəzən	SIY	16	2019-09-04 14:49:24.64337+00
187	Şəmkir	SKR	16	2019-09-04 14:49:24.652388+00
188	Sumqayıt	SM	16	2019-09-04 14:49:24.660744+00
189	Şamaxı	SMI	16	2019-09-04 14:49:24.668922+00
190	Samux	SMX	16	2019-09-04 14:49:24.678648+00
191	Şirvan	SR	16	2019-09-04 14:49:24.687697+00
192	Şuşa	SUS	16	2019-09-04 14:49:24.696673+00
193	Tərtər	TAR	16	2019-09-04 14:49:24.704701+00
194	Tovuz	TOV	16	2019-09-04 14:49:24.714216+00
195	Ucar	UCA	16	2019-09-04 14:49:24.723642+00
196	Xankəndi	XA	16	2019-09-04 14:49:24.732664+00
197	Xaçmaz	XAC	16	2019-09-04 14:49:24.741568+00
198	Xocalı	XCI	16	2019-09-04 14:49:24.75109+00
199	Xızı	XIZ	16	2019-09-04 14:49:24.759898+00
200	Xocavənd	XVD	16	2019-09-04 14:49:24.768219+00
201	Yardımlı	YAR	16	2019-09-04 14:49:24.777615+00
202	Yevlax	YE	16	2019-09-04 14:49:24.786527+00
203	Zəngilan	ZAN	16	2019-09-04 14:49:24.799907+00
204	Zaqatala	ZAQ	16	2019-09-04 14:49:24.80958+00
205	Zərdab	ZAR	16	2019-09-04 14:49:24.818981+00
206	Federacija Bosne i Hercegovine	BIH	17	2019-09-04 14:49:24.829075+00
207	Brčko distrikt	BRC	17	2019-09-04 14:49:24.837512+00
208	Republika Srpska	SRP	17	2019-09-04 14:49:24.846871+00
209	Christ Church	01	18	2019-09-04 14:49:24.856137+00
210	Saint Andrew	02	18	2019-09-04 14:49:24.86464+00
211	Saint George	03	18	2019-09-04 14:49:24.879691+00
212	Saint James	04	18	2019-09-04 14:49:24.890432+00
213	Saint John	05	18	2019-09-04 14:49:24.898254+00
214	Saint Joseph	06	18	2019-09-04 14:49:24.913126+00
215	Saint Lucy	07	18	2019-09-04 14:49:24.939637+00
216	Saint Michael	08	18	2019-09-04 14:49:24.957595+00
217	Saint Peter	09	18	2019-09-04 14:49:24.966506+00
218	Saint Philip	10	18	2019-09-04 14:49:24.987188+00
219	Saint Thomas	11	18	2019-09-04 14:49:24.995257+00
220	Barisal	A	19	2019-09-04 14:49:25.018252+00
221	Chittagong	B	19	2019-09-04 14:49:25.027828+00
222	Dhaka	C	19	2019-09-04 14:49:25.036342+00
223	Khulna	D	19	2019-09-04 14:49:25.044679+00
224	Rajshahi	E	19	2019-09-04 14:49:25.053279+00
225	Rangpur	F	19	2019-09-04 14:49:25.064629+00
226	Sylhet	G	19	2019-09-04 14:49:25.075188+00
227	Rangpur bibhag	7	19	2019-09-04 14:49:25.103247+00
228	Brussels-Capital Region	BRU	20	2019-09-04 14:49:25.217412+00
229	Flemish Region	VLG	20	2019-09-04 14:49:25.230957+00
230	Walloon Region	WAL	20	2019-09-04 14:49:25.242211+00
231	Boucle du Mouhoun	01	21	2019-09-04 14:49:25.254124+00
232	Cascades	02	21	2019-09-04 14:49:25.264709+00
233	Centre	03	21	2019-09-04 14:49:25.333811+00
234	Centre-Est	04	21	2019-09-04 14:49:25.353005+00
235	Centre-Nord	05	21	2019-09-04 14:49:25.361066+00
236	Centre-Ouest	06	21	2019-09-04 14:49:25.386436+00
237	Centre-Sud	07	21	2019-09-04 14:49:25.394973+00
238	Est	08	21	2019-09-04 14:49:25.41347+00
239	Hauts-Bassins	09	21	2019-09-04 14:49:25.430695+00
240	Nord	10	21	2019-09-04 14:49:25.493589+00
241	Plateau-Central	11	21	2019-09-04 14:49:25.50264+00
242	Sahel	12	21	2019-09-04 14:49:25.510488+00
243	Sud-Ouest	13	21	2019-09-04 14:49:25.518257+00
244	Blagoevgrad	01	22	2019-09-04 14:49:25.526927+00
245	Burgas	02	22	2019-09-04 14:49:25.53482+00
246	Varna	03	22	2019-09-04 14:49:25.54539+00
247	Veliko Tarnovo	04	22	2019-09-04 14:49:25.553365+00
248	Vidin	05	22	2019-09-04 14:49:25.562816+00
249	Vratsa	06	22	2019-09-04 14:49:25.571148+00
250	Gabrovo	07	22	2019-09-04 14:49:25.57896+00
251	Dobrich	08	22	2019-09-04 14:49:25.586849+00
252	Kardzhali	09	22	2019-09-04 14:49:25.594989+00
253	Kyustendil	10	22	2019-09-04 14:49:25.603619+00
254	Lovech	11	22	2019-09-04 14:49:25.611729+00
255	Montana	12	22	2019-09-04 14:49:25.61967+00
256	Pazardzhik	13	22	2019-09-04 14:49:25.627468+00
257	Pernik	14	22	2019-09-04 14:49:25.63499+00
258	Pleven	15	22	2019-09-04 14:49:25.653569+00
259	Plovdiv	16	22	2019-09-04 14:49:25.665676+00
260	Razgrad	17	22	2019-09-04 14:49:25.675022+00
261	Ruse	18	22	2019-09-04 14:49:25.683793+00
262	Silistra	19	22	2019-09-04 14:49:25.692598+00
263	Sliven	20	22	2019-09-04 14:49:25.701408+00
264	Smolyan	21	22	2019-09-04 14:49:25.709808+00
265	Sofia-Grad	22	22	2019-09-04 14:49:25.718414+00
266	Sofia	23	22	2019-09-04 14:49:25.726998+00
267	Stara Zagora	24	22	2019-09-04 14:49:25.735601+00
268	Targovishte	25	22	2019-09-04 14:49:25.744258+00
269	Haskovo	26	22	2019-09-04 14:49:25.752981+00
270	Shumen	27	22	2019-09-04 14:49:25.764013+00
271	Yambol	28	22	2019-09-04 14:49:25.773188+00
272	Al Manāmah (Al ‘Āşimah)	13	23	2019-09-04 14:49:25.782518+00
273	Al Janūbīyah	14	23	2019-09-04 14:49:25.793153+00
274	Al Muḩarraq	15	23	2019-09-04 14:49:25.805314+00
275	Al Wusţá	16	23	2019-09-04 14:49:25.815078+00
276	Ash Shamālīyah	17	23	2019-09-04 14:49:25.824494+00
277	Bubanza	BB	24	2019-09-04 14:49:25.834245+00
278	Bujumbura Rural	BL	24	2019-09-04 14:49:25.843175+00
279	Bujumbura Mairie	BM	24	2019-09-04 14:49:25.852022+00
280	Bururi	BR	24	2019-09-04 14:49:25.861328+00
281	Cankuzo	CA	24	2019-09-04 14:49:25.871807+00
282	Cibitoke	CI	24	2019-09-04 14:49:25.881025+00
283	Gitega	GI	24	2019-09-04 14:49:25.890255+00
284	Kirundo	KI	24	2019-09-04 14:49:25.899392+00
285	Karuzi	KR	24	2019-09-04 14:49:25.908635+00
286	Kayanza	KY	24	2019-09-04 14:49:25.917211+00
287	Makamba	MA	24	2019-09-04 14:49:25.925669+00
288	Muramvya	MU	24	2019-09-04 14:49:25.934118+00
289	Mwaro	MW	24	2019-09-04 14:49:25.946831+00
290	Ngozi	NG	24	2019-09-04 14:49:25.957136+00
291	Rutana	RT	24	2019-09-04 14:49:25.966432+00
292	Ruyigi	RY	24	2019-09-04 14:49:25.975449+00
293	Atakora	AK	25	2019-09-04 14:49:25.98567+00
294	Alibori	AL	25	2019-09-04 14:49:25.994965+00
295	Atlantique	AQ	25	2019-09-04 14:49:26.007528+00
296	Borgou	BO	25	2019-09-04 14:49:26.016154+00
297	Collines	CO	25	2019-09-04 14:49:26.024905+00
298	Donga	DO	25	2019-09-04 14:49:26.033718+00
299	Kouffo	KO	25	2019-09-04 14:49:26.042629+00
300	Littoral	LI	25	2019-09-04 14:49:26.053328+00
301	Mono	MO	25	2019-09-04 14:49:26.062787+00
302	Ouémé	OU	25	2019-09-04 14:49:26.073007+00
303	Plateau	PL	25	2019-09-04 14:49:26.081875+00
304	Zou	ZO	25	2019-09-04 14:49:26.090352+00
305	Devenshire	DEV	27	2019-09-04 14:49:26.099861+00
306	Hamilton	HAM	27	2019-09-04 14:49:26.108244+00
307	Paget	PAG	27	2019-09-04 14:49:26.116163+00
308	Pembroke	PEM	27	2019-09-04 14:49:26.12492+00
309	Saint George's	SGE	27	2019-09-04 14:49:26.133915+00
310	Sandys	SAN	27	2019-09-04 14:49:26.142703+00
311	Smiths	SMI	27	2019-09-04 14:49:26.15182+00
312	Southampton	SOU	27	2019-09-04 14:49:26.161043+00
313	Warwick	WAR	27	2019-09-04 14:49:26.169791+00
314	Belait	BE	28	2019-09-04 14:49:26.179997+00
315	Brunei-Muara	BM	28	2019-09-04 14:49:26.18885+00
316	Temburong	TE	28	2019-09-04 14:49:26.197428+00
317	Tutong	TU	28	2019-09-04 14:49:26.206059+00
318	El Beni	B	29	2019-09-04 14:49:26.215841+00
319	Cochabamba	C	29	2019-09-04 14:49:26.224716+00
320	Chuquisaca	H	29	2019-09-04 14:49:26.234291+00
321	La Paz	L	29	2019-09-04 14:49:26.243325+00
322	Pando	N	29	2019-09-04 14:49:26.251783+00
323	Oruro	O	29	2019-09-04 14:49:26.259888+00
324	Potosí	P	29	2019-09-04 14:49:26.269793+00
325	Santa Cruz	S	29	2019-09-04 14:49:26.279929+00
326	Tarija	T	29	2019-09-04 14:49:26.292819+00
327	Bonaire	BO	30	2019-09-04 14:49:26.303061+00
328	Saba	SA	30	2019-09-04 14:49:26.312414+00
329	Sint Eustatius	SE	30	2019-09-04 14:49:26.321175+00
330	Acre	AC	31	2019-09-04 14:49:26.333025+00
331	Alagoas	AL	31	2019-09-04 14:49:26.345976+00
332	Amazonas	AM	31	2019-09-04 14:49:26.356845+00
333	Amapá	AP	31	2019-09-04 14:49:26.366414+00
334	Bahia	BA	31	2019-09-04 14:49:26.377458+00
335	Ceará	CE	31	2019-09-04 14:49:26.387398+00
336	Distrito Federal	DF	31	2019-09-04 14:49:26.413145+00
337	Espírito Santo	ES	31	2019-09-04 14:49:26.423581+00
338	Goiás	GO	31	2019-09-04 14:49:26.432612+00
339	Maranhão	MA	31	2019-09-04 14:49:26.441347+00
340	Minas Gerais	MG	31	2019-09-04 14:49:26.451603+00
341	Mato Grosso do Sul	MS	31	2019-09-04 14:49:26.461361+00
342	Mato Grosso	MT	31	2019-09-04 14:49:26.46958+00
343	Pará	PA	31	2019-09-04 14:49:26.47919+00
344	Paraíba	PB	31	2019-09-04 14:49:26.488135+00
345	Pernambuco	PE	31	2019-09-04 14:49:26.496945+00
346	Piauí	PI	31	2019-09-04 14:49:26.506268+00
347	Paraná	PR	31	2019-09-04 14:49:26.515638+00
348	Rio de Janeiro	RJ	31	2019-09-04 14:49:26.524726+00
349	Rio Grande do Norte	RN	31	2019-09-04 14:49:26.535098+00
350	Rondônia	RO	31	2019-09-04 14:49:26.544072+00
351	Roraima	RR	31	2019-09-04 14:49:26.553363+00
352	Rio Grande do Sul	RS	31	2019-09-04 14:49:26.563426+00
353	Santa Catarina	SC	31	2019-09-04 14:49:26.572059+00
354	Sergipe	SE	31	2019-09-04 14:49:26.580579+00
355	São Paulo	SP	31	2019-09-04 14:49:26.589596+00
356	Tocantins	TO	31	2019-09-04 14:49:26.5985+00
357	Acklins	AK	32	2019-09-04 14:49:26.608356+00
358	Bimini	BI	32	2019-09-04 14:49:26.617407+00
359	Black Point	BP	32	2019-09-04 14:49:26.626658+00
360	Berry Islands	BY	32	2019-09-04 14:49:26.63553+00
361	Central Eleuthera	CE	32	2019-09-04 14:49:26.644487+00
362	Cat Island	CI	32	2019-09-04 14:49:26.653418+00
363	Crooked Island and Long Cay	CK	32	2019-09-04 14:49:26.662396+00
364	Central Abaco	CO	32	2019-09-04 14:49:26.671838+00
365	Central Andros	CS	32	2019-09-04 14:49:26.68117+00
366	East Grand Bahama	EG	32	2019-09-04 14:49:26.689889+00
367	Exuma	EX	32	2019-09-04 14:49:26.703123+00
368	City of Freeport	FP	32	2019-09-04 14:49:26.71319+00
369	Grand Cay	GC	32	2019-09-04 14:49:26.723278+00
370	Harbour Island	HI	32	2019-09-04 14:49:26.732344+00
371	Hope Town	HT	32	2019-09-04 14:49:26.741394+00
372	Inagua	IN	32	2019-09-04 14:49:26.752934+00
373	Long Island	LI	32	2019-09-04 14:49:26.762371+00
374	Mangrove Cay	MC	32	2019-09-04 14:49:26.772047+00
375	Mayaguana	MG	32	2019-09-04 14:49:26.78148+00
376	Moore's Island	MI	32	2019-09-04 14:49:26.791111+00
377	North Eleuthera	NE	32	2019-09-04 14:49:26.800597+00
378	North Abaco	NO	32	2019-09-04 14:49:26.811763+00
379	North Andros	NS	32	2019-09-04 14:49:26.821759+00
380	Rum Cay	RC	32	2019-09-04 14:49:26.831484+00
381	Ragged Island	RI	32	2019-09-04 14:49:26.841051+00
382	South Andros	SA	32	2019-09-04 14:49:26.849918+00
383	South Eleuthera	SE	32	2019-09-04 14:49:26.85897+00
384	South Abaco	SO	32	2019-09-04 14:49:26.870665+00
385	San Salvador	SS	32	2019-09-04 14:49:26.884919+00
386	Spanish Wells	SW	32	2019-09-04 14:49:26.898531+00
387	West Grand Bahama	WG	32	2019-09-04 14:49:26.910987+00
388	Paro	11	33	2019-09-04 14:49:26.925053+00
389	Chhukha	12	33	2019-09-04 14:49:26.937797+00
390	Ha	13	33	2019-09-04 14:49:26.956688+00
391	Samtee	14	33	2019-09-04 14:49:26.968776+00
392	Thimphu	15	33	2019-09-04 14:49:26.982176+00
393	Tsirang	21	33	2019-09-04 14:49:26.993851+00
394	Dagana	22	33	2019-09-04 14:49:27.006367+00
395	Punakha	23	33	2019-09-04 14:49:27.018792+00
396	Wangdue Phodrang	24	33	2019-09-04 14:49:27.030054+00
397	Sarpang	31	33	2019-09-04 14:49:27.041823+00
398	Trongsa	32	33	2019-09-04 14:49:27.058988+00
399	Bumthang	33	33	2019-09-04 14:49:27.072435+00
400	Zhemgang	34	33	2019-09-04 14:49:27.084299+00
401	Trashigang	41	33	2019-09-04 14:49:27.095307+00
402	Monggar	42	33	2019-09-04 14:49:27.116762+00
403	Pemagatshel	43	33	2019-09-04 14:49:27.12574+00
404	Lhuentse	44	33	2019-09-04 14:49:27.135212+00
405	Samdrup Jongkha	45	33	2019-09-04 14:49:27.144121+00
406	Gasa	GA	33	2019-09-04 14:49:27.152982+00
407	Trashi Yangtse	TY	33	2019-09-04 14:49:27.161555+00
408	Central	CE	35	2019-09-04 14:49:27.179623+00
409	Ghanzi	GH	35	2019-09-04 14:49:27.188718+00
410	Kgalagadi	KG	35	2019-09-04 14:49:27.198106+00
411	Kgatleng	KL	35	2019-09-04 14:49:27.206667+00
412	Kweneng	KW	35	2019-09-04 14:49:27.215329+00
413	North-East	NE	35	2019-09-04 14:49:27.224341+00
414	North-West	NW	35	2019-09-04 14:49:27.233653+00
415	South-East	SE	35	2019-09-04 14:49:27.244368+00
416	Southern	SO	35	2019-09-04 14:49:27.254529+00
417	Brèsckaja voblasc'	BR	36	2019-09-04 14:49:27.265171+00
418	Horad Minsk	HM	36	2019-09-04 14:49:27.276388+00
419	Homel'skaja voblasc'	HO	36	2019-09-04 14:49:27.285818+00
420	Hrodzenskaja voblasc'	HR	36	2019-09-04 14:49:27.294404+00
421	Mahilëuskaja voblasc'	MA	36	2019-09-04 14:49:27.303805+00
422	Minskaja voblasc'	MI	36	2019-09-04 14:49:27.312611+00
423	Vicebskaja voblasc'	VI	36	2019-09-04 14:49:27.32166+00
424	Belize	BZ	37	2019-09-04 14:49:27.331607+00
425	Cayo	CY	37	2019-09-04 14:49:27.34036+00
426	Corozal	CZL	37	2019-09-04 14:49:27.36303+00
427	Orange Walk	OW	37	2019-09-04 14:49:27.373288+00
428	Stann Creek	SC	37	2019-09-04 14:49:27.383121+00
429	Toledo	TOL	37	2019-09-04 14:49:27.392703+00
430	Alberta	AB	38	2019-09-04 14:49:27.403071+00
431	British Columbia	BC	38	2019-09-04 14:49:27.413095+00
432	Manitoba	MB	38	2019-09-04 14:49:27.422283+00
433	New Brunswick	NB	38	2019-09-04 14:49:27.431634+00
434	Newfoundland and Labrador	NL	38	2019-09-04 14:49:27.44179+00
435	Nova Scotia	NS	38	2019-09-04 14:49:27.451503+00
436	Northwest Territories	NT	38	2019-09-04 14:49:27.460291+00
437	Nunavut	NU	38	2019-09-04 14:49:27.47093+00
438	Ontario	ON	38	2019-09-04 14:49:27.48358+00
439	Prince Edward Island	PE	38	2019-09-04 14:49:27.493515+00
440	Quebec	QC	38	2019-09-04 14:49:27.501867+00
441	Saskatchewan	SK	38	2019-09-04 14:49:27.511077+00
442	Yukon Territory	YT	38	2019-09-04 14:49:27.519424+00
443	Bas-Congo	BC	40	2019-09-04 14:49:27.529973+00
444	Bandundu	BN	40	2019-09-04 14:49:27.538631+00
445	Équateur	EQ	40	2019-09-04 14:49:27.548675+00
446	Katanga	KA	40	2019-09-04 14:49:27.558166+00
447	Kasai-Oriental	KE	40	2019-09-04 14:49:27.566752+00
448	Kinshasa	KN	40	2019-09-04 14:49:27.575883+00
449	Kasai-Occidental	KW	40	2019-09-04 14:49:27.584593+00
450	Maniema	MA	40	2019-09-04 14:49:27.594111+00
451	Nord-Kivu	NK	40	2019-09-04 14:49:27.603234+00
452	Orientale	OR	40	2019-09-04 14:49:27.613735+00
453	Sud-Kivu	SK	40	2019-09-04 14:49:27.624367+00
454	Ouham	AC	41	2019-09-04 14:49:27.634871+00
455	Bamingui-Bangoran	BB	41	2019-09-04 14:49:27.6447+00
456	Bangui	BGF	41	2019-09-04 14:49:27.653448+00
457	Basse-Kotto	BK	41	2019-09-04 14:49:27.662718+00
458	Haute-Kotto	HK	41	2019-09-04 14:49:27.672281+00
459	Haut-Mbomou	HM	41	2019-09-04 14:49:27.688895+00
460	Haute-Sangha / Mambéré-Kadéï	HS	41	2019-09-04 14:49:27.699453+00
461	Gribingui	KB	41	2019-09-04 14:49:27.708364+00
462	Kémo-Gribingui	KG	41	2019-09-04 14:49:27.717871+00
463	Lobaye	LB	41	2019-09-04 14:49:27.727068+00
464	Mbomou	MB	41	2019-09-04 14:49:27.736264+00
465	Ombella-M'poko	MP	41	2019-09-04 14:49:27.745571+00
466	Nana-Mambéré	NM	41	2019-09-04 14:49:27.754363+00
467	Ouham-Pendé	OP	41	2019-09-04 14:49:27.763107+00
468	Sangha	SE	41	2019-09-04 14:49:27.771948+00
469	Ouaka	UK	41	2019-09-04 14:49:27.781351+00
470	Vakaga	VK	41	2019-09-04 14:49:27.791023+00
471	Bouenza	11	42	2019-09-04 14:49:27.801825+00
472	Pool	12	42	2019-09-04 14:49:27.812182+00
473	Sangha	13	42	2019-09-04 14:49:27.821102+00
474	Plateaux	14	42	2019-09-04 14:49:27.847379+00
475	Cuvette-Ouest	15	42	2019-09-04 14:49:27.873831+00
476	Lékoumou	2	42	2019-09-04 14:49:27.882963+00
477	Kouilou	5	42	2019-09-04 14:49:27.891802+00
478	Likouala	7	42	2019-09-04 14:49:27.900516+00
479	Cuvette	8	42	2019-09-04 14:49:27.909273+00
480	Niari	9	42	2019-09-04 14:49:27.91841+00
481	Brazzaville	BZV	42	2019-09-04 14:49:27.927178+00
482	Aargau	AG	43	2019-09-04 14:49:27.937126+00
483	Appenzell Innerrhoden	AI	43	2019-09-04 14:49:27.945375+00
484	Appenzell Ausserrhoden	AR	43	2019-09-04 14:49:27.954443+00
485	Bern	BE	43	2019-09-04 14:49:27.963897+00
486	Basel-Landschaft	BL	43	2019-09-04 14:49:27.97348+00
487	Basel-Stadt	BS	43	2019-09-04 14:49:27.982192+00
488	Fribourg	FR	43	2019-09-04 14:49:27.991396+00
489	Genève	GE	43	2019-09-04 14:49:28.000255+00
490	Glarus	GL	43	2019-09-04 14:49:28.008666+00
491	Graubünden	GR	43	2019-09-04 14:49:28.017786+00
492	Jura	JU	43	2019-09-04 14:49:28.026315+00
493	Luzern	LU	43	2019-09-04 14:49:28.035297+00
494	Neuchâtel	NE	43	2019-09-04 14:49:28.044101+00
495	Nidwalden	NW	43	2019-09-04 14:49:28.053196+00
496	Obwalden	OW	43	2019-09-04 14:49:28.062529+00
497	Sankt Gallen	SG	43	2019-09-04 14:49:28.071871+00
498	Schaffhausen	SH	43	2019-09-04 14:49:28.081323+00
499	Solothurn	SO	43	2019-09-04 14:49:28.089349+00
500	Schwyz	SZ	43	2019-09-04 14:49:28.09823+00
501	Thurgau	TG	43	2019-09-04 14:49:28.108299+00
502	Ticino	TI	43	2019-09-04 14:49:28.117478+00
503	Uri	UR	43	2019-09-04 14:49:28.125552+00
504	Vaud	VD	43	2019-09-04 14:49:28.133954+00
505	Valais	VS	43	2019-09-04 14:49:28.14289+00
506	Zug	ZG	43	2019-09-04 14:49:28.152011+00
507	Zürich	ZH	43	2019-09-04 14:49:28.160635+00
508	Lagunes (Région des)	01	44	2019-09-04 14:49:28.170586+00
509	Haut-Sassandra (Région du)	02	44	2019-09-04 14:49:28.180472+00
510	Savanes (Région des)	03	44	2019-09-04 14:49:28.19209+00
511	Vallée du Bandama (Région de la)	04	44	2019-09-04 14:49:28.200914+00
512	Moyen-Comoé (Région du)	05	44	2019-09-04 14:49:28.209085+00
513	18 Montagnes (Région des)	06	44	2019-09-04 14:49:28.217635+00
514	Lacs (Région des)	07	44	2019-09-04 14:49:28.228461+00
515	Zanzan (Région du)	08	44	2019-09-04 14:49:28.23702+00
516	Bas-Sassandra (Région du)	09	44	2019-09-04 14:49:28.245706+00
517	Denguélé (Région du)	10	44	2019-09-04 14:49:28.254496+00
518	Nzi-Comoé (Région)	11	44	2019-09-04 14:49:28.262814+00
519	Marahoué (Région de la)	12	44	2019-09-04 14:49:28.271599+00
520	Sud-Comoé (Région du)	13	44	2019-09-04 14:49:28.280677+00
521	Worodouqou (Région du)	14	44	2019-09-04 14:49:28.289281+00
522	Sud-Bandama (Région du)	15	44	2019-09-04 14:49:28.297684+00
523	Agnébi (Région de l')	16	44	2019-09-04 14:49:28.306822+00
524	Bafing (Région du)	17	44	2019-09-04 14:49:28.315345+00
525	Fromager (Région du)	18	44	2019-09-04 14:49:28.324183+00
526	Moyen-Cavally (Région du)	19	44	2019-09-04 14:49:28.33271+00
527	Aisén del General Carlos Ibáñez del Campo	AI	46	2019-09-04 14:49:28.343991+00
528	Antofagasta	AN	46	2019-09-04 14:49:28.352893+00
529	Arica y Parinacota	AP	46	2019-09-04 14:49:28.362537+00
530	Araucanía	AR	46	2019-09-04 14:49:28.372113+00
531	Atacama	AT	46	2019-09-04 14:49:28.38122+00
532	Bío-Bío	BI	46	2019-09-04 14:49:28.389617+00
533	Coquimbo	CO	46	2019-09-04 14:49:28.398487+00
534	Libertador General Bernardo O'Higgins	LI	46	2019-09-04 14:49:28.408533+00
535	Los Lagos	LL	46	2019-09-04 14:49:28.417092+00
536	Los Ríos	LR	46	2019-09-04 14:49:28.426004+00
537	Magallanes y Antártica Chilena	MA	46	2019-09-04 14:49:28.435128+00
538	Maule	ML	46	2019-09-04 14:49:28.444104+00
539	Región Metropolitana de Santiago	RM	46	2019-09-04 14:49:28.453385+00
540	Tarapacá	TA	46	2019-09-04 14:49:28.46357+00
541	Valparaíso	VS	46	2019-09-04 14:49:28.472744+00
542	Adamaoua	AD	47	2019-09-04 14:49:28.482336+00
543	Centre	CE	47	2019-09-04 14:49:28.491523+00
544	Far North	EN	47	2019-09-04 14:49:28.502255+00
545	East	ES	47	2019-09-04 14:49:28.514263+00
546	Littoral	LT	47	2019-09-04 14:49:28.523463+00
547	North	NO	47	2019-09-04 14:49:28.53282+00
548	North-West (Cameroon)	NW	47	2019-09-04 14:49:28.541224+00
549	West	OU	47	2019-09-04 14:49:28.550532+00
550	South	SU	47	2019-09-04 14:49:28.55994+00
551	South-West	SW	47	2019-09-04 14:49:28.569066+00
552	Anhui Sheng	AH	48	2019-09-04 14:49:28.579602+00
553	Beijing Shi	BJ	48	2019-09-04 14:49:28.588792+00
554	Chongqing Shi	CQ	48	2019-09-04 14:49:28.597986+00
555	Fujian Sheng	FJ	48	2019-09-04 14:49:28.60729+00
556	Guangdong Sheng	GD	48	2019-09-04 14:49:28.616531+00
557	Gansu Sheng	GS	48	2019-09-04 14:49:28.625683+00
558	Guangxi Zhuangzu Zizhiqu	GX	48	2019-09-04 14:49:28.634652+00
559	Guizhou Sheng	GZ	48	2019-09-04 14:49:28.645491+00
560	Henan Sheng	HA	48	2019-09-04 14:49:28.654811+00
561	Hubei Sheng	HB	48	2019-09-04 14:49:28.664542+00
562	Hebei Sheng	HE	48	2019-09-04 14:49:28.674525+00
563	Hainan Sheng	HI	48	2019-09-04 14:49:28.687961+00
564	Hong Kong SAR (see also separate country code entry under HK)	HK	48	2019-09-04 14:49:28.699058+00
565	Heilongjiang Sheng	HL	48	2019-09-04 14:49:28.711178+00
566	Hunan Sheng	HN	48	2019-09-04 14:49:28.723762+00
567	Jilin Sheng	JL	48	2019-09-04 14:49:28.736493+00
568	Jiangsu Sheng	JS	48	2019-09-04 14:49:28.747853+00
569	Jiangxi Sheng	JX	48	2019-09-04 14:49:28.759049+00
570	Liaoning Sheng	LN	48	2019-09-04 14:49:28.771432+00
571	Macao SAR (see also separate country code entry under MO)	MO	48	2019-09-04 14:49:28.781876+00
572	Nei Mongol Zizhiqu	NM	48	2019-09-04 14:49:28.793588+00
573	Ningxia Huizi Zizhiqu	NX	48	2019-09-04 14:49:28.804608+00
574	Qinghai Sheng	QH	48	2019-09-04 14:49:28.817277+00
575	Sichuan Sheng	SC	48	2019-09-04 14:49:28.828605+00
576	Shandong Sheng	SD	48	2019-09-04 14:49:28.839053+00
577	Shanghai Shi	SH	48	2019-09-04 14:49:28.85233+00
578	Shaanxi Sheng	SN	48	2019-09-04 14:49:28.864425+00
579	Shanxi Sheng	SX	48	2019-09-04 14:49:28.876692+00
580	Tianjin Shi	TJ	48	2019-09-04 14:49:28.900087+00
581	Taiwan Sheng (see also separate country code entry under TW)	TW	48	2019-09-04 14:49:28.9093+00
582	Xinjiang Uygur Zizhiqu	XJ	48	2019-09-04 14:49:28.917934+00
583	Xizang Zizhiqu	XZ	48	2019-09-04 14:49:28.926806+00
584	Yunnan Sheng	YN	48	2019-09-04 14:49:28.935578+00
585	Zhejiang Sheng	ZJ	48	2019-09-04 14:49:28.944493+00
586	Amazonas	AMA	49	2019-09-04 14:49:28.954248+00
587	Antioquia	ANT	49	2019-09-04 14:49:28.964588+00
588	Arauca	ARA	49	2019-09-04 14:49:28.975079+00
589	Atlántico	ATL	49	2019-09-04 14:49:28.984013+00
590	Bolívar	BOL	49	2019-09-04 14:49:28.992698+00
591	Boyacá	BOY	49	2019-09-04 14:49:29.001642+00
592	Caldas	CAL	49	2019-09-04 14:49:29.010667+00
593	Caquetá	CAQ	49	2019-09-04 14:49:29.019582+00
594	Casanare	CAS	49	2019-09-04 14:49:29.028419+00
595	Cauca	CAU	49	2019-09-04 14:49:29.037653+00
596	Cesar	CES	49	2019-09-04 14:49:29.046991+00
597	Chocó	CHO	49	2019-09-04 14:49:29.05527+00
598	Córdoba	COR	49	2019-09-04 14:49:29.064002+00
599	Cundinamarca	CUN	49	2019-09-04 14:49:29.073774+00
600	Distrito Capital de Bogotá	DC	49	2019-09-04 14:49:29.082595+00
601	Guainía	GUA	49	2019-09-04 14:49:29.091036+00
602	Guaviare	GUV	49	2019-09-04 14:49:29.100021+00
603	Huila	HUI	49	2019-09-04 14:49:29.109478+00
604	La Guajira	LAG	49	2019-09-04 14:49:29.118462+00
605	Magdalena	MAG	49	2019-09-04 14:49:29.127366+00
606	Meta	MET	49	2019-09-04 14:49:29.136265+00
607	Nariño	NAR	49	2019-09-04 14:49:29.145286+00
608	Norte de Santander	NSA	49	2019-09-04 14:49:29.155493+00
609	Putumayo	PUT	49	2019-09-04 14:49:29.164356+00
610	Quindío	QUI	49	2019-09-04 14:49:29.173487+00
611	Risaralda	RIS	49	2019-09-04 14:49:29.182552+00
612	Santander	SAN	49	2019-09-04 14:49:29.19377+00
613	San Andrés, Providencia y Santa Catalina	SAP	49	2019-09-04 14:49:29.202961+00
614	Sucre	SUC	49	2019-09-04 14:49:29.212061+00
615	Tolima	TOL	49	2019-09-04 14:49:29.221314+00
616	Valle del Cauca	VAC	49	2019-09-04 14:49:29.232906+00
617	Vaupés	VAU	49	2019-09-04 14:49:29.241807+00
618	Vichada	VID	49	2019-09-04 14:49:29.250642+00
619	Alajuela	A	50	2019-09-04 14:49:29.261042+00
620	Cartago	C	50	2019-09-04 14:49:29.269521+00
621	Guanacaste	G	50	2019-09-04 14:49:29.277951+00
622	Heredia	H	50	2019-09-04 14:49:29.285641+00
623	Limón	L	50	2019-09-04 14:49:29.293411+00
624	Puntarenas	P	50	2019-09-04 14:49:29.302517+00
625	San José	SJ	50	2019-09-04 14:49:29.311204+00
626	Pinar del Rio	01	51	2019-09-04 14:49:29.322252+00
627	La Habana	02	51	2019-09-04 14:49:29.330278+00
628	Ciudad de La Habana	03	51	2019-09-04 14:49:29.339429+00
629	Matanzas	04	51	2019-09-04 14:49:29.34832+00
630	Villa Clara	05	51	2019-09-04 14:49:29.356713+00
631	Cienfuegos	06	51	2019-09-04 14:49:29.364872+00
632	Sancti Spíritus	07	51	2019-09-04 14:49:29.37499+00
633	Ciego de Ávila	08	51	2019-09-04 14:49:29.384083+00
634	Camagüey	09	51	2019-09-04 14:49:29.392924+00
635	Las Tunas	10	51	2019-09-04 14:49:29.402043+00
636	Holguín	11	51	2019-09-04 14:49:29.410479+00
637	Granma	12	51	2019-09-04 14:49:29.418897+00
638	Santiago de Cuba	13	51	2019-09-04 14:49:29.430243+00
639	Guantánamo	14	51	2019-09-04 14:49:29.439075+00
640	Isla de la Juventud	99	51	2019-09-04 14:49:29.447492+00
641	Ilhas de Barlavento	B	52	2019-09-04 14:49:29.458368+00
642	Ilhas de Sotavento	S	52	2019-09-04 14:49:29.468619+00
643	Lefkosía	01	55	2019-09-04 14:49:29.478557+00
644	Lemesós	02	55	2019-09-04 14:49:29.487131+00
645	Lárnaka	03	55	2019-09-04 14:49:29.496289+00
646	Ammóchostos	04	55	2019-09-04 14:49:29.505594+00
647	Páfos	05	55	2019-09-04 14:49:29.513982+00
648	Kerýneia	06	55	2019-09-04 14:49:29.523976+00
649	Praha, Hlavní mešto	10	56	2019-09-04 14:49:29.534238+00
650	Středočeský kraj	20	56	2019-09-04 14:49:29.543163+00
651	Jihočeský kraj	31	56	2019-09-04 14:49:29.552015+00
652	Plzeňský kraj	32	56	2019-09-04 14:49:29.560858+00
653	Karlovarský kraj	41	56	2019-09-04 14:49:29.569227+00
654	Ústecký kraj	42	56	2019-09-04 14:49:29.578311+00
655	Liberecký kraj	51	56	2019-09-04 14:49:29.58718+00
656	Královéhradecký kraj	52	56	2019-09-04 14:49:29.596024+00
657	Pardubický kraj	53	56	2019-09-04 14:49:29.604433+00
658	Kraj Vysočina	63	56	2019-09-04 14:49:29.613923+00
659	Jihomoravský kraj	64	56	2019-09-04 14:49:29.622552+00
660	Olomoucký kraj	71	56	2019-09-04 14:49:29.631487+00
661	Zlínský kraj	72	56	2019-09-04 14:49:29.640625+00
662	Moravskoslezský kraj	80	56	2019-09-04 14:49:29.65046+00
663	Brandenburg	BB	57	2019-09-04 14:49:29.66049+00
664	Berlin	BE	57	2019-09-04 14:49:29.668889+00
665	Baden-Württemberg	BW	57	2019-09-04 14:49:29.677472+00
666	Bayern	BY	57	2019-09-04 14:49:29.686392+00
667	Bremen	HB	57	2019-09-04 14:49:29.694865+00
668	Hessen	HE	57	2019-09-04 14:49:29.703809+00
669	Hamburg	HH	57	2019-09-04 14:49:29.713695+00
670	Mecklenburg-Vorpommern	MV	57	2019-09-04 14:49:29.722706+00
671	Niedersachsen	NI	57	2019-09-04 14:49:29.731675+00
672	Nordrhein-Westfalen	NW	57	2019-09-04 14:49:29.740829+00
673	Rheinland-Pfalz	RP	57	2019-09-04 14:49:29.749854+00
674	Schleswig-Holstein	SH	57	2019-09-04 14:49:29.758209+00
675	Saarland	SL	57	2019-09-04 14:49:29.766848+00
676	Sachsen	SN	57	2019-09-04 14:49:29.775818+00
677	Sachsen-Anhalt	ST	57	2019-09-04 14:49:29.784373+00
678	Thüringen	TH	57	2019-09-04 14:49:29.7939+00
679	Arta	AR	58	2019-09-04 14:49:29.804205+00
680	Ali Sabieh	AS	58	2019-09-04 14:49:29.813512+00
681	Dikhil	DI	58	2019-09-04 14:49:29.822977+00
682	Djibouti	DJ	58	2019-09-04 14:49:29.831508+00
683	Obock	OB	58	2019-09-04 14:49:29.840351+00
684	Tadjourah	TA	58	2019-09-04 14:49:29.849545+00
685	Nordjylland	81	59	2019-09-04 14:49:29.85998+00
686	Midtjylland	82	59	2019-09-04 14:49:29.868794+00
687	Syddanmark	83	59	2019-09-04 14:49:29.879394+00
688	Hovedstaden	84	59	2019-09-04 14:49:29.888103+00
689	Sjælland	85	59	2019-09-04 14:49:29.897876+00
690	Saint Peter	01	60	2019-09-04 14:49:29.907535+00
691	Saint Andrew	02	60	2019-09-04 14:49:29.916244+00
692	Saint David	03	60	2019-09-04 14:49:29.924834+00
693	Saint George	04	60	2019-09-04 14:49:29.933697+00
694	Saint John	05	60	2019-09-04 14:49:29.941815+00
695	Saint Joseph	06	60	2019-09-04 14:49:29.949436+00
696	Saint Luke	07	60	2019-09-04 14:49:29.958093+00
697	Saint Mark	08	60	2019-09-04 14:49:29.967345+00
698	Saint Patrick	09	60	2019-09-04 14:49:29.976601+00
699	Saint Paul	10	60	2019-09-04 14:49:29.985765+00
700	Distrito Nacional (Santo Domingo)	01	61	2019-09-04 14:49:29.996054+00
701	Azua	02	61	2019-09-04 14:49:30.005021+00
702	Bahoruco	03	61	2019-09-04 14:49:30.014373+00
703	Barahona	04	61	2019-09-04 14:49:30.023729+00
704	Dajabón	05	61	2019-09-04 14:49:30.038004+00
705	Duarte	06	61	2019-09-04 14:49:30.047134+00
706	La Estrelleta [Elías Piña]	07	61	2019-09-04 14:49:30.056755+00
707	El Seybo [El Seibo]	08	61	2019-09-04 14:49:30.066181+00
708	Espaillat	09	61	2019-09-04 14:49:30.075596+00
709	Independencia	10	61	2019-09-04 14:49:30.084147+00
710	La Altagracia	11	61	2019-09-04 14:49:30.092728+00
711	La Romana	12	61	2019-09-04 14:49:30.101173+00
712	La Vega	13	61	2019-09-04 14:49:30.109581+00
713	María Trinidad Sánchez	14	61	2019-09-04 14:49:30.118475+00
714	Monte Cristi	15	61	2019-09-04 14:49:30.126934+00
715	Pedernales	16	61	2019-09-04 14:49:30.135839+00
716	Peravia	17	61	2019-09-04 14:49:30.144166+00
717	Puerto Plata	18	61	2019-09-04 14:49:30.15279+00
718	Salcedo	19	61	2019-09-04 14:49:30.162484+00
719	Samaná	20	61	2019-09-04 14:49:30.170571+00
720	San Cristóbal	21	61	2019-09-04 14:49:30.181523+00
721	San Juan	22	61	2019-09-04 14:49:30.190526+00
722	San Pedro de Macorís	23	61	2019-09-04 14:49:30.19919+00
723	Sánchez Ramírez	24	61	2019-09-04 14:49:30.20752+00
724	Santiago	25	61	2019-09-04 14:49:30.215422+00
725	Santiago Rodríguez	26	61	2019-09-04 14:49:30.224201+00
726	Valverde	27	61	2019-09-04 14:49:30.233592+00
727	Monseñor Nouel	28	61	2019-09-04 14:49:30.241363+00
728	Monte Plata	29	61	2019-09-04 14:49:30.249832+00
729	Hato Mayor	30	61	2019-09-04 14:49:30.258723+00
730	Adrar	01	62	2019-09-04 14:49:30.268934+00
731	Chlef	02	62	2019-09-04 14:49:30.277744+00
732	Laghouat	03	62	2019-09-04 14:49:30.286316+00
733	Oum el Bouaghi	04	62	2019-09-04 14:49:30.295025+00
734	Batna	05	62	2019-09-04 14:49:30.303787+00
735	Béjaïa	06	62	2019-09-04 14:49:30.313281+00
736	Biskra	07	62	2019-09-04 14:49:30.321568+00
737	Béchar	08	62	2019-09-04 14:49:30.331765+00
738	Blida	09	62	2019-09-04 14:49:30.340086+00
739	Bouira	10	62	2019-09-04 14:49:30.348498+00
740	Tamanghasset	11	62	2019-09-04 14:49:30.357046+00
741	Tébessa	12	62	2019-09-04 14:49:30.366186+00
742	Tlemcen	13	62	2019-09-04 14:49:30.375327+00
743	Tiaret	14	62	2019-09-04 14:49:30.3862+00
744	Tizi Ouzou	15	62	2019-09-04 14:49:30.395378+00
745	Alger	16	62	2019-09-04 14:49:30.403515+00
746	Djelfa	17	62	2019-09-04 14:49:30.412472+00
747	Jijel	18	62	2019-09-04 14:49:30.420979+00
748	Sétif	19	62	2019-09-04 14:49:30.429171+00
749	Saïda	20	62	2019-09-04 14:49:30.437809+00
750	Skikda	21	62	2019-09-04 14:49:30.446477+00
751	Sidi Bel Abbès	22	62	2019-09-04 14:49:30.455205+00
752	Annaba	23	62	2019-09-04 14:49:30.463321+00
753	Guelma	24	62	2019-09-04 14:49:30.472296+00
754	Constantine	25	62	2019-09-04 14:49:30.48016+00
755	Médéa	26	62	2019-09-04 14:49:30.487968+00
756	Mostaganem	27	62	2019-09-04 14:49:30.495788+00
757	Msila	28	62	2019-09-04 14:49:30.506594+00
758	Mascara	29	62	2019-09-04 14:49:30.520741+00
759	Ouargla	30	62	2019-09-04 14:49:30.529974+00
760	Oran	31	62	2019-09-04 14:49:30.53855+00
761	El Bayadh	32	62	2019-09-04 14:49:30.546708+00
762	Illizi	33	62	2019-09-04 14:49:30.554731+00
763	Bordj Bou Arréridj	34	62	2019-09-04 14:49:30.56344+00
764	Boumerdès	35	62	2019-09-04 14:49:30.572372+00
765	El Tarf	36	62	2019-09-04 14:49:30.581725+00
766	Tindouf	37	62	2019-09-04 14:49:30.590738+00
767	Tissemsilt	38	62	2019-09-04 14:49:30.598957+00
768	El Oued	39	62	2019-09-04 14:49:30.607139+00
769	Khenchela	40	62	2019-09-04 14:49:30.614886+00
770	Souk Ahras	41	62	2019-09-04 14:49:30.622877+00
771	Tipaza	42	62	2019-09-04 14:49:30.631264+00
772	Mila	43	62	2019-09-04 14:49:30.639316+00
773	Aïn Defla	44	62	2019-09-04 14:49:30.647965+00
774	Naama	45	62	2019-09-04 14:49:30.656894+00
775	Aïn Témouchent	46	62	2019-09-04 14:49:30.665268+00
776	Ghardaïa	47	62	2019-09-04 14:49:30.67411+00
777	Relizane	48	62	2019-09-04 14:49:30.683362+00
778	Azuay	A	63	2019-09-04 14:49:30.693267+00
779	Bolívar	B	63	2019-09-04 14:49:30.701947+00
780	Carchi	C	63	2019-09-04 14:49:30.709919+00
781	Orellana	D	63	2019-09-04 14:49:30.718984+00
782	Esmeraldas	E	63	2019-09-04 14:49:30.727656+00
783	Cañar	F	63	2019-09-04 14:49:30.737164+00
784	Guayas	G	63	2019-09-04 14:49:30.745757+00
785	Chimborazo	H	63	2019-09-04 14:49:30.754302+00
786	Imbabura	I	63	2019-09-04 14:49:30.763342+00
787	Loja	L	63	2019-09-04 14:49:30.772202+00
788	Manabí	M	63	2019-09-04 14:49:30.781362+00
789	Napo	N	63	2019-09-04 14:49:30.790232+00
790	El Oro	O	63	2019-09-04 14:49:30.799062+00
791	Pichincha	P	63	2019-09-04 14:49:30.809748+00
792	Los Ríos	R	63	2019-09-04 14:49:30.821611+00
793	Morona-Santiago	S	63	2019-09-04 14:49:30.830636+00
794	Santo Domingo de los Tsáchilas	SD	63	2019-09-04 14:49:30.839856+00
795	Santa Elena	SE	63	2019-09-04 14:49:30.848876+00
796	Tungurahua	T	63	2019-09-04 14:49:30.858132+00
797	Sucumbíos	U	63	2019-09-04 14:49:30.871079+00
798	Galápagos	W	63	2019-09-04 14:49:30.881867+00
799	Cotopaxi	X	63	2019-09-04 14:49:30.891215+00
800	Pastaza	Y	63	2019-09-04 14:49:30.900525+00
801	Zamora-Chinchipe	Z	63	2019-09-04 14:49:30.909803+00
802	Harjumaa	37	64	2019-09-04 14:49:30.920473+00
803	Hiiumaa	39	64	2019-09-04 14:49:30.92911+00
804	Ida-Virumaa	44	64	2019-09-04 14:49:30.937941+00
805	Jõgevamaa	49	64	2019-09-04 14:49:30.946862+00
806	Järvamaa	51	64	2019-09-04 14:49:30.955631+00
807	Läänemaa	57	64	2019-09-04 14:49:30.964311+00
808	Lääne-Virumaa	59	64	2019-09-04 14:49:30.974254+00
809	Põlvamaa	65	64	2019-09-04 14:49:30.982085+00
810	Pärnumaa	67	64	2019-09-04 14:49:30.992923+00
811	Raplamaa	70	64	2019-09-04 14:49:31.002071+00
812	Saaremaa	74	64	2019-09-04 14:49:31.011584+00
813	Tartumaa	78	64	2019-09-04 14:49:31.021159+00
814	Valgamaa	82	64	2019-09-04 14:49:31.029226+00
815	Viljandimaa	84	64	2019-09-04 14:49:31.038022+00
816	Võrumaa	86	64	2019-09-04 14:49:31.046746+00
817	Al Iskandarīyah	ALX	65	2019-09-04 14:49:31.057343+00
818	Aswān	ASN	65	2019-09-04 14:49:31.068455+00
819	Asyūt	AST	65	2019-09-04 14:49:31.080881+00
820	Al Bahr al Ahmar	BA	65	2019-09-04 14:49:31.091028+00
821	Al Buhayrah	BH	65	2019-09-04 14:49:31.100705+00
822	Banī Suwayf	BNS	65	2019-09-04 14:49:31.10892+00
823	Al Qāhirah	C	65	2019-09-04 14:49:31.117973+00
824	Ad Daqahlīyah	DK	65	2019-09-04 14:49:31.128477+00
825	Dumyāt	DT	65	2019-09-04 14:49:31.137144+00
826	Al Fayyūm	FYM	65	2019-09-04 14:49:31.145981+00
827	Al Gharbīyah	GH	65	2019-09-04 14:49:31.154497+00
828	Al Jīzah	GZ	65	2019-09-04 14:49:31.164168+00
829	Ḩulwān	HU	65	2019-09-04 14:49:31.172701+00
830	Al Ismā`īlīyah	IS	65	2019-09-04 14:49:31.186385+00
831	Janūb Sīnā'	JS	65	2019-09-04 14:49:31.19741+00
832	Al Qalyūbīyah	KB	65	2019-09-04 14:49:31.206532+00
833	Kafr ash Shaykh	KFS	65	2019-09-04 14:49:31.215906+00
834	Qinā	KN	65	2019-09-04 14:49:31.224873+00
835	Al Minyā	MN	65	2019-09-04 14:49:31.233418+00
836	Al Minūfīyah	MNF	65	2019-09-04 14:49:31.24287+00
837	Matrūh	MT	65	2019-09-04 14:49:31.251795+00
838	Būr Sa`īd	PTS	65	2019-09-04 14:49:31.261311+00
839	Sūhāj	SHG	65	2019-09-04 14:49:31.270256+00
840	Ash Sharqīyah	SHR	65	2019-09-04 14:49:31.280533+00
841	Shamal Sīnā'	SIN	65	2019-09-04 14:49:31.289662+00
842	As Sādis min Uktūbar	SU	65	2019-09-04 14:49:31.298852+00
843	As Suways	SUZ	65	2019-09-04 14:49:31.307814+00
844	Al Wādī al Jadīd	WAD	65	2019-09-04 14:49:31.317392+00
845	Ansabā	AN	67	2019-09-04 14:49:31.328947+00
846	Janūbī al Baḩrī al Aḩmar	DK	67	2019-09-04 14:49:31.338428+00
847	Al Janūbī	DU	67	2019-09-04 14:49:31.348146+00
848	Qāsh-Barkah	GB	67	2019-09-04 14:49:31.357489+00
849	Al Awsaţ	MA	67	2019-09-04 14:49:31.368852+00
850	Shimālī al Baḩrī al Aḩmar	SK	67	2019-09-04 14:49:31.380248+00
851	Andalucía	AN	68	2019-09-04 14:49:31.397871+00
852	Aragón	AR	68	2019-09-04 14:49:31.407322+00
853	Asturias, Principado de	AS	68	2019-09-04 14:49:31.416022+00
854	Cantabria	CB	68	2019-09-04 14:49:31.424407+00
855	Ceuta	CE	68	2019-09-04 14:49:31.433489+00
856	Castilla y León	CL	68	2019-09-04 14:49:31.442253+00
857	Castilla-La Mancha	CM	68	2019-09-04 14:49:31.450629+00
858	Canarias	CN	68	2019-09-04 14:49:31.459354+00
859	Catalunya	CT	68	2019-09-04 14:49:31.468068+00
860	Extremadura	EX	68	2019-09-04 14:49:31.47783+00
861	Galicia	GA	68	2019-09-04 14:49:31.486376+00
862	Illes Balears	IB	68	2019-09-04 14:49:31.495026+00
863	Murcia, Región de	MC	68	2019-09-04 14:49:31.504136+00
864	Madrid, Comunidad de	MD	68	2019-09-04 14:49:31.513898+00
865	Melilla	ML	68	2019-09-04 14:49:31.522771+00
866	Navarra, Comunidad Foral de / Nafarroako Foru Komunitatea	NC	68	2019-09-04 14:49:31.531565+00
867	País Vasco / Euskal Herria	PV	68	2019-09-04 14:49:31.54017+00
868	La Rioja	RI	68	2019-09-04 14:49:31.54852+00
869	Valenciana, Comunidad / Valenciana, Comunitat	VC	68	2019-09-04 14:49:31.556978+00
870	Ādīs Ābeba	AA	69	2019-09-04 14:49:31.567157+00
871	Āfar	AF	69	2019-09-04 14:49:31.575992+00
872	Āmara	AM	69	2019-09-04 14:49:31.585309+00
873	Bīnshangul Gumuz	BE	69	2019-09-04 14:49:31.593925+00
874	Dirē Dawa	DD	69	2019-09-04 14:49:31.603944+00
875	Gambēla Hizboch	GA	69	2019-09-04 14:49:31.613173+00
876	Hārerī Hizb	HA	69	2019-09-04 14:49:31.622519+00
877	Oromīya	OR	69	2019-09-04 14:49:31.633115+00
878	YeDebub Bihēroch Bihēreseboch na Hizboch	SN	69	2019-09-04 14:49:31.643178+00
879	Sumalē	SO	69	2019-09-04 14:49:31.652804+00
880	Tigray	TI	69	2019-09-04 14:49:31.661413+00
881	Ahvenanmaan maakunta	01	70	2019-09-04 14:49:31.672355+00
882	Etelä-Karjala	02	70	2019-09-04 14:49:31.681595+00
883	Etelä-Pohjanmaa	03	70	2019-09-04 14:49:31.691568+00
884	Etelä-Savo	04	70	2019-09-04 14:49:31.714006+00
885	Kainuu	05	70	2019-09-04 14:49:31.728956+00
886	Kanta-Häme	06	70	2019-09-04 14:49:31.739002+00
887	Keski-Pohjanmaa	07	70	2019-09-04 14:49:31.747698+00
888	Keski-Suomi	08	70	2019-09-04 14:49:31.756441+00
889	Kymenlaakso	09	70	2019-09-04 14:49:31.765882+00
890	Lappi	10	70	2019-09-04 14:49:31.774559+00
891	Pirkanmaa	11	70	2019-09-04 14:49:31.783639+00
892	Pohjanmaa	12	70	2019-09-04 14:49:31.791893+00
893	Pohjois-Karjala	13	70	2019-09-04 14:49:31.800322+00
894	Pohjois-Pohjanmaa	14	70	2019-09-04 14:49:31.809231+00
895	Pohjois-Savo	15	70	2019-09-04 14:49:31.817868+00
896	Päijät-Häme	16	70	2019-09-04 14:49:31.827145+00
897	Satakunta	17	70	2019-09-04 14:49:31.835739+00
898	Uusimaa	18	70	2019-09-04 14:49:31.844325+00
899	Varsinais-Suomi	19	70	2019-09-04 14:49:31.853144+00
900	Central	C	71	2019-09-04 14:49:31.863655+00
901	Eastern	E	71	2019-09-04 14:49:31.872749+00
902	Northern	N	71	2019-09-04 14:49:31.883145+00
903	Rotuma	R	71	2019-09-04 14:49:31.893118+00
904	Western	W	71	2019-09-04 14:49:31.901875+00
905	Kosrae	KSA	73	2019-09-04 14:49:31.912237+00
906	Pohnpei	PNI	73	2019-09-04 14:49:31.920756+00
907	Chuuk	TRK	73	2019-09-04 14:49:31.928614+00
908	Yap	YAP	73	2019-09-04 14:49:31.937354+00
909	Auvergne-Rhône-Alpes	ARA	75	2019-09-04 14:49:31.94831+00
910	Bourgogne-Franche-Comté	BFC	75	2019-09-04 14:49:31.956951+00
911	Saint-Barthélemy	BL	75	2019-09-04 14:49:31.965951+00
912	Bretagne	BRE	75	2019-09-04 14:49:31.976273+00
913	Corse	COR	75	2019-09-04 14:49:31.984675+00
914	Clipperton	CP	75	2019-09-04 14:49:31.993123+00
915	Centre-Val de Loire	CVL	75	2019-09-04 14:49:32.001755+00
916	Grand-Est	GES	75	2019-09-04 14:49:32.010375+00
917	Guyane (française)	GF	75	2019-09-04 14:49:32.019275+00
918	Guadeloupe	GUA	75	2019-09-04 14:49:32.028371+00
919	Hauts-de-France	HDF	75	2019-09-04 14:49:32.037094+00
920	Île-de-France	IDF	75	2019-09-04 14:49:32.045966+00
921	La Réunion	LRE	75	2019-09-04 14:49:32.054561+00
922	Mayotte	MAY	75	2019-09-04 14:49:32.063159+00
923	Saint-Martin	MF	75	2019-09-04 14:49:32.072727+00
924	Martinique	MQ	75	2019-09-04 14:49:32.081447+00
925	Nouvelle-Aquitaine	NAQ	75	2019-09-04 14:49:32.090239+00
926	Nouvelle-Calédonie	NC	75	2019-09-04 14:49:32.100342+00
927	Normandie	NOR	75	2019-09-04 14:49:32.108905+00
928	Occitanie	OCC	75	2019-09-04 14:49:32.117578+00
929	Provence-Alpes-Côte-d’Azur	PAC	75	2019-09-04 14:49:32.131557+00
930	Pays-de-la-Loire	PDL	75	2019-09-04 14:49:32.141178+00
931	Polynésie française	PF	75	2019-09-04 14:49:32.149649+00
932	Saint-Pierre-et-Miquelon	PM	75	2019-09-04 14:49:32.157538+00
933	Terres australes françaises	TF	75	2019-09-04 14:49:32.166244+00
934	Wallis-et-Futuna	WF	75	2019-09-04 14:49:32.175174+00
935	Estuaire	1	76	2019-09-04 14:49:32.187192+00
936	Haut-Ogooué	2	76	2019-09-04 14:49:32.195905+00
937	Moyen-Ogooué	3	76	2019-09-04 14:49:32.205922+00
938	Ngounié	4	76	2019-09-04 14:49:32.214595+00
939	Nyanga	5	76	2019-09-04 14:49:32.223368+00
940	Ogooué-Ivindo	6	76	2019-09-04 14:49:32.232412+00
941	Ogooué-Lolo	7	76	2019-09-04 14:49:32.241721+00
942	Ogooué-Maritime	8	76	2019-09-04 14:49:32.25057+00
943	Woleu-Ntem	9	76	2019-09-04 14:49:32.259405+00
944	England and Wales	EAW	77	2019-09-04 14:49:32.270146+00
945	England	ENG	77	2019-09-04 14:49:32.278906+00
946	Great Britain	GBN	77	2019-09-04 14:49:32.28752+00
947	Northern Ireland	NIR	77	2019-09-04 14:49:32.296132+00
948	Scotland	SCT	77	2019-09-04 14:49:32.30551+00
949	United Kingdom	UKM	77	2019-09-04 14:49:32.315135+00
950	Wales; Cymru	WLS	77	2019-09-04 14:49:32.325295+00
951	Saint Andrew	01	78	2019-09-04 14:49:32.33648+00
952	Saint David	02	78	2019-09-04 14:49:32.345776+00
953	Saint George	03	78	2019-09-04 14:49:32.355238+00
954	Saint John	04	78	2019-09-04 14:49:32.364129+00
955	Saint Mark	05	78	2019-09-04 14:49:32.374055+00
956	Saint Patrick	06	78	2019-09-04 14:49:32.382826+00
957	Southern Grenadine Islands	10	78	2019-09-04 14:49:32.391599+00
958	Abkhazia	AB	79	2019-09-04 14:49:32.402602+00
959	Ajaria	AJ	79	2019-09-04 14:49:32.411865+00
960	Guria	GU	79	2019-09-04 14:49:32.420784+00
961	Imeret’i	IM	79	2019-09-04 14:49:32.429201+00
962	Kakhet’i	KA	79	2019-09-04 14:49:32.438203+00
963	K’vemo K’art’li	KK	79	2019-09-04 14:49:32.446856+00
964	Mts’khet’a-Mt’ianet’i	MM	79	2019-09-04 14:49:32.456619+00
965	Racha-Lech’khumi-K’vemo Svanet’i	RL	79	2019-09-04 14:49:32.465166+00
966	Samts’khe-Javakhet’i	SJ	79	2019-09-04 14:49:32.475164+00
967	Shida K’art’li	SK	79	2019-09-04 14:49:32.484584+00
968	Samegrelo-Zemo Svanet’i	SZ	79	2019-09-04 14:49:32.493816+00
969	T’bilisi	TB	79	2019-09-04 14:49:32.503208+00
970	Greater Accra	AA	82	2019-09-04 14:49:32.518748+00
971	Ashanti	AH	82	2019-09-04 14:49:32.529316+00
972	Brong-Ahafo	BA	82	2019-09-04 14:49:32.538926+00
973	Central	CP	82	2019-09-04 14:49:32.548371+00
974	Eastern	EP	82	2019-09-04 14:49:32.556941+00
975	Northern	NP	82	2019-09-04 14:49:32.565551+00
976	Volta	TV	82	2019-09-04 14:49:32.57509+00
977	Upper East	UE	82	2019-09-04 14:49:32.584149+00
978	Upper West	UW	82	2019-09-04 14:49:32.592762+00
979	Western	WP	82	2019-09-04 14:49:32.601555+00
980	Kommune Kujalleq	KU	84	2019-09-04 14:49:32.612088+00
981	Qaasuitsup Kommunia	QA	84	2019-09-04 14:49:32.621235+00
982	Qeqqata Kommunia	QE	84	2019-09-04 14:49:32.629238+00
983	Kommuneqarfik Sermersooq	SM	84	2019-09-04 14:49:32.637572+00
984	Banjul	B	85	2019-09-04 14:49:32.64852+00
985	Lower River	L	85	2019-09-04 14:49:32.657241+00
986	Central River	M	85	2019-09-04 14:49:32.665568+00
987	North Bank	N	85	2019-09-04 14:49:32.673768+00
988	Upper River	U	85	2019-09-04 14:49:32.681116+00
989	Western	W	85	2019-09-04 14:49:32.690614+00
990	Boké	B	86	2019-09-04 14:49:32.702575+00
991	Conakry	C	86	2019-09-04 14:49:32.712187+00
992	Kindia	D	86	2019-09-04 14:49:32.721485+00
993	Faranah	F	86	2019-09-04 14:49:32.730957+00
994	Kankan	K	86	2019-09-04 14:49:32.740756+00
995	Labé	L	86	2019-09-04 14:49:32.750049+00
996	Mamou	M	86	2019-09-04 14:49:32.759949+00
997	Nzérékoré	N	86	2019-09-04 14:49:32.769026+00
998	Región Continental	C	88	2019-09-04 14:49:32.779323+00
999	Región Insular	I	88	2019-09-04 14:49:32.787699+00
1000	Agio Oros	69	89	2019-09-04 14:49:32.798129+00
1001	Anatoliki Makedonia kai Thraki	A	89	2019-09-04 14:49:32.806552+00
1002	Kentriki Makedonia	B	89	2019-09-04 14:49:32.814104+00
1003	Dytiki Makedonia	C	89	2019-09-04 14:49:32.822906+00
1004	Ipeiros	D	89	2019-09-04 14:49:32.830772+00
1005	Thessalia	E	89	2019-09-04 14:49:32.839233+00
1006	Ionia Nisia	F	89	2019-09-04 14:49:32.848216+00
1007	Dytiki Ellada	G	89	2019-09-04 14:49:32.856931+00
1008	Sterea Ellada	H	89	2019-09-04 14:49:32.864674+00
1009	Attiki	I	89	2019-09-04 14:49:32.877851+00
1010	Peloponnisos	J	89	2019-09-04 14:49:32.887705+00
1011	Voreio Aigaio	K	89	2019-09-04 14:49:32.896215+00
1012	Notio Aigaio	L	89	2019-09-04 14:49:32.904859+00
1013	Kriti	M	89	2019-09-04 14:49:32.913811+00
1014	Alta Verapaz	AV	91	2019-09-04 14:49:32.924902+00
1015	Baja Verapaz	BV	91	2019-09-04 14:49:32.932999+00
1016	Chimaltenango	CM	91	2019-09-04 14:49:32.941215+00
1017	Chiquimula	CQ	91	2019-09-04 14:49:32.950819+00
1018	Escuintla	ES	91	2019-09-04 14:49:32.959194+00
1019	Guatemala	GU	91	2019-09-04 14:49:32.967121+00
1020	Huehuetenango	HU	91	2019-09-04 14:49:32.977937+00
1021	Izabal	IZ	91	2019-09-04 14:49:32.986872+00
1022	Jalapa	JA	91	2019-09-04 14:49:32.996008+00
1023	Jutiapa	JU	91	2019-09-04 14:49:33.004967+00
1024	Petén	PE	91	2019-09-04 14:49:33.013405+00
1025	El Progreso	PR	91	2019-09-04 14:49:33.022438+00
1026	Quiché	QC	91	2019-09-04 14:49:33.03142+00
1027	Quetzaltenango	QZ	91	2019-09-04 14:49:33.041466+00
1028	Retalhuleu	RE	91	2019-09-04 14:49:33.051053+00
1029	Sacatepéquez	SA	91	2019-09-04 14:49:33.060157+00
1030	San Marcos	SM	91	2019-09-04 14:49:33.069331+00
1031	Sololá	SO	91	2019-09-04 14:49:33.07857+00
1032	Santa Rosa	SR	91	2019-09-04 14:49:33.087596+00
1033	Suchitepéquez	SU	91	2019-09-04 14:49:33.096364+00
1034	Totonicapán	TO	91	2019-09-04 14:49:33.105296+00
1035	Zacapa	ZA	91	2019-09-04 14:49:33.114272+00
1036	Bissau	BS	93	2019-09-04 14:49:33.12552+00
1037	Leste	L	93	2019-09-04 14:49:33.135631+00
1038	Norte	N	93	2019-09-04 14:49:33.144929+00
1039	Sul	S	93	2019-09-04 14:49:33.153337+00
1040	Barima-Waini	BA	94	2019-09-04 14:49:33.164149+00
1041	Cuyuni-Mazaruni	CU	94	2019-09-04 14:49:33.172955+00
1042	Demerara-Mahaica	DE	94	2019-09-04 14:49:33.184531+00
1043	East Berbice-Corentyne	EB	94	2019-09-04 14:49:33.194183+00
1044	Essequibo Islands-West Demerara	ES	94	2019-09-04 14:49:33.203384+00
1045	Mahaica-Berbice	MA	94	2019-09-04 14:49:33.212523+00
1046	Pomeroon-Supenaam	PM	94	2019-09-04 14:49:33.221697+00
1047	Potaro-Siparuni	PT	94	2019-09-04 14:49:33.23043+00
1048	Upper Demerara-Berbice	UD	94	2019-09-04 14:49:33.239886+00
1049	Upper Takutu-Upper Essequibo	UT	94	2019-09-04 14:49:33.249122+00
1050	Atlántida	AT	97	2019-09-04 14:49:33.265201+00
1051	Choluteca	CH	97	2019-09-04 14:49:33.274805+00
1052	Colón	CL	97	2019-09-04 14:49:33.285396+00
1053	Comayagua	CM	97	2019-09-04 14:49:33.294743+00
1054	Copán	CP	97	2019-09-04 14:49:33.303377+00
1055	Cortés	CR	97	2019-09-04 14:49:33.312246+00
1056	El Paraíso	EP	97	2019-09-04 14:49:33.320699+00
1057	Francisco Morazán	FM	97	2019-09-04 14:49:33.329303+00
1058	Gracias a Dios	GD	97	2019-09-04 14:49:33.338204+00
1059	Islas de la Bahía	IB	97	2019-09-04 14:49:33.346871+00
1060	Intibucá	IN	97	2019-09-04 14:49:33.356016+00
1061	Lempira	LE	97	2019-09-04 14:49:33.364347+00
1062	La Paz	LP	97	2019-09-04 14:49:33.373198+00
1063	Ocotepeque	OC	97	2019-09-04 14:49:33.382793+00
1064	Olancho	OL	97	2019-09-04 14:49:33.391096+00
1065	Santa Bárbara	SB	97	2019-09-04 14:49:33.399772+00
1066	Valle	VA	97	2019-09-04 14:49:33.409088+00
1067	Yoro	YO	97	2019-09-04 14:49:33.418394+00
1068	Zagrebačka županija	01	98	2019-09-04 14:49:33.43+00
1069	Krapinsko-zagorska županija	02	98	2019-09-04 14:49:33.440998+00
1070	Sisačko-moslavačka županija	03	98	2019-09-04 14:49:33.450566+00
1071	Karlovačka županija	04	98	2019-09-04 14:49:33.458963+00
1072	Varaždinska županija	05	98	2019-09-04 14:49:33.467607+00
1073	Koprivničko-križevačka županija	06	98	2019-09-04 14:49:33.477797+00
1074	Bjelovarsko-bilogorska županija	07	98	2019-09-04 14:49:33.486135+00
1075	Primorsko-goranska županija	08	98	2019-09-04 14:49:33.495299+00
1076	Ličko-senjska županija	09	98	2019-09-04 14:49:33.504158+00
1077	Virovitičko-podravska županija	10	98	2019-09-04 14:49:33.512904+00
1078	Požeško-slavonska županija	11	98	2019-09-04 14:49:33.521616+00
1079	Brodsko-posavska županija	12	98	2019-09-04 14:49:33.53029+00
1080	Zadarska županija	13	98	2019-09-04 14:49:33.540001+00
1081	Osječko-baranjska županija	14	98	2019-09-04 14:49:33.54885+00
1082	Šibensko-kninska županija	15	98	2019-09-04 14:49:33.556731+00
1083	Vukovarsko-srijemska županija	16	98	2019-09-04 14:49:33.565525+00
1084	Splitsko-dalmatinska županija	17	98	2019-09-04 14:49:33.574356+00
1085	Istarska županija	18	98	2019-09-04 14:49:33.582554+00
1086	Dubrovačko-neretvanska županija	19	98	2019-09-04 14:49:33.591084+00
1087	Međimurska županija	20	98	2019-09-04 14:49:33.59994+00
1088	Grad Zagreb	21	98	2019-09-04 14:49:33.608448+00
1089	Artibonite	AR	99	2019-09-04 14:49:33.619118+00
1090	Centre	CE	99	2019-09-04 14:49:33.627979+00
1091	Grande-Anse	GA	99	2019-09-04 14:49:33.636702+00
1092	Nord	ND	99	2019-09-04 14:49:33.645417+00
1093	Nord-Est	NE	99	2019-09-04 14:49:33.654122+00
1094	Nord-Ouest	NO	99	2019-09-04 14:49:33.663102+00
1095	Ouest	OU	99	2019-09-04 14:49:33.67263+00
1096	Sud	SD	99	2019-09-04 14:49:33.681587+00
1097	Sud-Est	SE	99	2019-09-04 14:49:33.690998+00
1098	Baranya	BA	100	2019-09-04 14:49:33.701825+00
1099	Békéscsaba	BC	100	2019-09-04 14:49:33.710563+00
1100	Békés	BE	100	2019-09-04 14:49:33.718951+00
1101	Bács-Kiskun	BK	100	2019-09-04 14:49:33.727332+00
1102	Budapest	BU	100	2019-09-04 14:49:33.736049+00
1103	Borsod-Abaúj-Zemplén	BZ	100	2019-09-04 14:49:33.744965+00
1104	Csongrád	CS	100	2019-09-04 14:49:33.754499+00
1105	Debrecen	DE	100	2019-09-04 14:49:33.763602+00
1106	Dunaújváros	DU	100	2019-09-04 14:49:33.772439+00
1107	Eger	EG	100	2019-09-04 14:49:33.781334+00
1108	Érd	ER	100	2019-09-04 14:49:33.790026+00
1109	Fejér	FE	100	2019-09-04 14:49:33.799317+00
1110	Győr-Moson-Sopron	GS	100	2019-09-04 14:49:33.808072+00
1111	Győr	GY	100	2019-09-04 14:49:33.817191+00
1112	Hajdú-Bihar	HB	100	2019-09-04 14:49:33.826684+00
1113	Heves	HE	100	2019-09-04 14:49:33.83582+00
1114	Hódmezővásárhely	HV	100	2019-09-04 14:49:33.844702+00
1115	Jász-Nagykun-Szolnok	JN	100	2019-09-04 14:49:33.853611+00
1116	Komárom-Esztergom	KE	100	2019-09-04 14:49:33.863256+00
1117	Kecskemét	KM	100	2019-09-04 14:49:33.872046+00
1118	Kaposvár	KV	100	2019-09-04 14:49:33.88235+00
1119	Miskolc	MI	100	2019-09-04 14:49:33.891432+00
1120	Nagykanizsa	NK	100	2019-09-04 14:49:33.900012+00
1121	Nógrád	NO	100	2019-09-04 14:49:33.909151+00
1122	Nyíregyháza	NY	100	2019-09-04 14:49:33.9184+00
1123	Pest	PE	100	2019-09-04 14:49:33.926989+00
1124	Pécs	PS	100	2019-09-04 14:49:33.935191+00
1125	Szeged	SD	100	2019-09-04 14:49:33.944157+00
1126	Székesfehérvár	SF	100	2019-09-04 14:49:33.953394+00
1127	Szombathely	SH	100	2019-09-04 14:49:33.962391+00
1128	Szolnok	SK	100	2019-09-04 14:49:33.971526+00
1129	Sopron	SN	100	2019-09-04 14:49:33.982396+00
1130	Somogy	SO	100	2019-09-04 14:49:33.991351+00
1131	Szekszárd	SS	100	2019-09-04 14:49:34.002362+00
1132	Salgótarján	ST	100	2019-09-04 14:49:34.010268+00
1133	Szabolcs-Szatmár-Bereg	SZ	100	2019-09-04 14:49:34.01863+00
1134	Tatabánya	TB	100	2019-09-04 14:49:34.02703+00
1135	Tolna	TO	100	2019-09-04 14:49:34.041319+00
1136	Vas	VA	100	2019-09-04 14:49:34.050682+00
1137	Veszprém (county)	VE	100	2019-09-04 14:49:34.062262+00
1138	Veszprém	VM	100	2019-09-04 14:49:34.071358+00
1139	Zala	ZA	100	2019-09-04 14:49:34.080806+00
1140	Zalaegerszeg	ZE	100	2019-09-04 14:49:34.089773+00
1141	Papua	IJ	101	2019-09-04 14:49:34.102143+00
1142	Jawa	JW	101	2019-09-04 14:49:34.111209+00
1143	Kalimantan	KA	101	2019-09-04 14:49:34.119203+00
1144	Maluku	ML	101	2019-09-04 14:49:34.127888+00
1145	Nusa Tenggara	NU	101	2019-09-04 14:49:34.136499+00
1146	Sulawesi	SL	101	2019-09-04 14:49:34.145282+00
1147	Sumatera	SM	101	2019-09-04 14:49:34.153361+00
1148	Connacht	C	102	2019-09-04 14:49:34.163828+00
1149	Leinster	L	102	2019-09-04 14:49:34.171848+00
1150	Munster	M	102	2019-09-04 14:49:34.180785+00
1151	Ulster	U	102	2019-09-04 14:49:34.190188+00
1152	HaDarom	D	103	2019-09-04 14:49:34.20083+00
1153	Hefa	HA	103	2019-09-04 14:49:34.209253+00
1154	Yerushalayim Al Quds	JM	103	2019-09-04 14:49:34.217954+00
1155	HaMerkaz	M	103	2019-09-04 14:49:34.226227+00
1156	Tel-Aviv	TA	103	2019-09-04 14:49:34.234511+00
1157	HaZafon	Z	103	2019-09-04 14:49:34.243542+00
1158	Andaman and Nicobar Islands	AN	105	2019-09-04 14:49:34.25383+00
1159	Andhra Pradesh	AP	105	2019-09-04 14:49:34.262442+00
1160	Arunachal Pradesh	AR	105	2019-09-04 14:49:34.27099+00
1161	Assam	AS	105	2019-09-04 14:49:34.27923+00
1162	Bihar	BR	105	2019-09-04 14:49:34.287822+00
1163	Chandigarh	CH	105	2019-09-04 14:49:34.299749+00
1164	Chhattisgarh	CT	105	2019-09-04 14:49:34.309074+00
1165	Daman and Diu	DD	105	2019-09-04 14:49:34.31811+00
1166	Delhi	DL	105	2019-09-04 14:49:34.326443+00
1167	Dadra and Nagar Haveli	DN	105	2019-09-04 14:49:34.335281+00
1168	Goa	GA	105	2019-09-04 14:49:34.344073+00
1169	Gujarat	GJ	105	2019-09-04 14:49:34.352844+00
1170	Himachal Pradesh	HP	105	2019-09-04 14:49:34.36127+00
1171	Haryana	HR	105	2019-09-04 14:49:34.37035+00
1172	Jharkhand	JH	105	2019-09-04 14:49:34.380392+00
1173	Jammu and Kashmir	JK	105	2019-09-04 14:49:34.3893+00
1174	Karnataka	KA	105	2019-09-04 14:49:34.397667+00
1175	Kerala	KL	105	2019-09-04 14:49:34.405992+00
1176	Lakshadweep	LD	105	2019-09-04 14:49:34.415816+00
1177	Maharashtra	MH	105	2019-09-04 14:49:34.433118+00
1178	Meghalaya	ML	105	2019-09-04 14:49:34.446109+00
1179	Manipur	MN	105	2019-09-04 14:49:34.457161+00
1180	Madhya Pradesh	MP	105	2019-09-04 14:49:34.470135+00
1181	Mizoram	MZ	105	2019-09-04 14:49:34.483155+00
1182	Nagaland	NL	105	2019-09-04 14:49:34.510268+00
1183	Odisha	OR	105	2019-09-04 14:49:34.522259+00
1184	Punjab	PB	105	2019-09-04 14:49:34.534109+00
1185	Puducherry	PY	105	2019-09-04 14:49:34.544259+00
1186	Rajasthan	RJ	105	2019-09-04 14:49:34.553794+00
1187	Sikkim	SK	105	2019-09-04 14:49:34.56319+00
1188	Telangana	TG	105	2019-09-04 14:49:34.573028+00
1189	Tamil Nadu	TN	105	2019-09-04 14:49:34.582645+00
1190	Tripura	TR	105	2019-09-04 14:49:34.591743+00
1191	Uttar Pradesh	UP	105	2019-09-04 14:49:34.601743+00
1192	Uttarakhand	UT	105	2019-09-04 14:49:34.610847+00
1193	West Bengal	WB	105	2019-09-04 14:49:34.620244+00
1194	Al Anbar	AN	107	2019-09-04 14:49:34.631662+00
1195	Arbil	AR	107	2019-09-04 14:49:34.640295+00
1196	Al Basrah	BA	107	2019-09-04 14:49:34.649129+00
1197	Babil	BB	107	2019-09-04 14:49:34.658331+00
1198	Baghdad	BG	107	2019-09-04 14:49:34.668148+00
1199	Dahuk	DA	107	2019-09-04 14:49:34.676916+00
1200	Diyala	DI	107	2019-09-04 14:49:34.686137+00
1201	Dhi Qar	DQ	107	2019-09-04 14:49:34.695422+00
1202	Karbala'	KA	107	2019-09-04 14:49:34.704809+00
1203	Maysan	MA	107	2019-09-04 14:49:34.714062+00
1204	Al Muthanna	MU	107	2019-09-04 14:49:34.72297+00
1205	An Najef	NA	107	2019-09-04 14:49:34.731975+00
1206	Ninawa	NI	107	2019-09-04 14:49:34.742025+00
1207	Al Qadisiyah	QA	107	2019-09-04 14:49:34.75112+00
1208	Salah ad Din	SD	107	2019-09-04 14:49:34.760319+00
1209	As Sulaymaniyah	SW	107	2019-09-04 14:49:34.769274+00
1210	At Ta'mim	TS	107	2019-09-04 14:49:34.778515+00
1211	Wasit	WA	107	2019-09-04 14:49:34.788329+00
1212	Āzarbāyjān-e Sharqī	01	108	2019-09-04 14:49:34.800334+00
1213	Āzarbāyjān-e Gharbī	02	108	2019-09-04 14:49:34.809577+00
1214	Ardabīl	03	108	2019-09-04 14:49:34.822687+00
1215	Eşfahān	04	108	2019-09-04 14:49:34.833293+00
1216	Īlām	05	108	2019-09-04 14:49:34.843025+00
1217	Būshehr	06	108	2019-09-04 14:49:34.852035+00
1218	Tehrān	07	108	2019-09-04 14:49:34.86289+00
1219	Chahār Mahāll va Bakhtīārī	08	108	2019-09-04 14:49:34.87229+00
1220	Khūzestān	10	108	2019-09-04 14:49:34.882482+00
1221	Zanjān	11	108	2019-09-04 14:49:34.891363+00
1222	Semnān	12	108	2019-09-04 14:49:34.900325+00
1223	Sīstān va Balūchestān	13	108	2019-09-04 14:49:34.908635+00
1224	Fārs	14	108	2019-09-04 14:49:34.917811+00
1225	Kermān	15	108	2019-09-04 14:49:34.926434+00
1226	Kordestān	16	108	2019-09-04 14:49:34.935396+00
1227	Kermānshāh	17	108	2019-09-04 14:49:34.943713+00
1228	Kohgīlūyeh va Būyer Ahmad	18	108	2019-09-04 14:49:34.952175+00
1229	Gīlān	19	108	2019-09-04 14:49:34.960807+00
1230	Lorestān	20	108	2019-09-04 14:49:34.970279+00
1231	Māzandarān	21	108	2019-09-04 14:49:34.978931+00
1232	Markazī	22	108	2019-09-04 14:49:34.991218+00
1233	Hormozgān	23	108	2019-09-04 14:49:34.999271+00
1234	Hamadān	24	108	2019-09-04 14:49:35.007521+00
1235	Yazd	25	108	2019-09-04 14:49:35.016456+00
1236	Qom	26	108	2019-09-04 14:49:35.025051+00
1237	Golestān	27	108	2019-09-04 14:49:35.035165+00
1238	Qazvīn	28	108	2019-09-04 14:49:35.045165+00
1239	Khorāsān-e Janūbī	29	108	2019-09-04 14:49:35.054022+00
1240	Khorāsān-e Razavī	30	108	2019-09-04 14:49:35.062607+00
1241	Khorāsān-e Shemālī	31	108	2019-09-04 14:49:35.07118+00
1242	Reykjavík	0	109	2019-09-04 14:49:35.084354+00
1243	Höfuðborgarsvæðið	1	109	2019-09-04 14:49:35.093413+00
1244	Suðurnes	2	109	2019-09-04 14:49:35.102189+00
1245	Vesturland	3	109	2019-09-04 14:49:35.111958+00
1246	Vestfirðir	4	109	2019-09-04 14:49:35.120906+00
1247	Norðurland vestra	5	109	2019-09-04 14:49:35.129522+00
1248	Norðurland eystra	6	109	2019-09-04 14:49:35.13817+00
1249	Austurland	7	109	2019-09-04 14:49:35.146974+00
1250	Suðurland	8	109	2019-09-04 14:49:35.159273+00
1251	Piemonte	21	110	2019-09-04 14:49:35.169775+00
1252	Valle d'Aosta	23	110	2019-09-04 14:49:35.178649+00
1253	Lombardia	25	110	2019-09-04 14:49:35.187972+00
1254	Trentino-Alto Adige	32	110	2019-09-04 14:49:35.196771+00
1255	Veneto	34	110	2019-09-04 14:49:35.205453+00
1256	Friuli-Venezia Giulia	36	110	2019-09-04 14:49:35.214677+00
1257	Liguria	42	110	2019-09-04 14:49:35.22358+00
1258	Emilia-Romagna	45	110	2019-09-04 14:49:35.232552+00
1259	Toscana	52	110	2019-09-04 14:49:35.241686+00
1260	Umbria	55	110	2019-09-04 14:49:35.250328+00
1261	Marche	57	110	2019-09-04 14:49:35.258991+00
1262	Lazio	62	110	2019-09-04 14:49:35.267598+00
1263	Abruzzo	65	110	2019-09-04 14:49:35.276525+00
1264	Molise	67	110	2019-09-04 14:49:35.285642+00
1265	Campania	72	110	2019-09-04 14:49:35.293787+00
1266	Puglia	75	110	2019-09-04 14:49:35.301663+00
1267	Basilicata	77	110	2019-09-04 14:49:35.310455+00
1268	Calabria	78	110	2019-09-04 14:49:35.318436+00
1269	Sicilia	82	110	2019-09-04 14:49:35.327046+00
1270	Sardegna	88	110	2019-09-04 14:49:35.335791+00
1271	Kingston	01	112	2019-09-04 14:49:35.347373+00
1272	Saint Andrew	02	112	2019-09-04 14:49:35.357645+00
1273	Saint Thomas	03	112	2019-09-04 14:49:35.366373+00
1274	Portland	04	112	2019-09-04 14:49:35.375273+00
1275	Saint Mary	05	112	2019-09-04 14:49:35.384901+00
1276	Saint Ann	06	112	2019-09-04 14:49:35.394408+00
1277	Trelawny	07	112	2019-09-04 14:49:35.40456+00
1278	Saint James	08	112	2019-09-04 14:49:35.414178+00
1279	Hanover	09	112	2019-09-04 14:49:35.42482+00
1280	Westmoreland	10	112	2019-09-04 14:49:35.43392+00
1281	Saint Elizabeth	11	112	2019-09-04 14:49:35.443201+00
1282	Manchester	12	112	2019-09-04 14:49:35.452529+00
1283	Clarendon	13	112	2019-09-04 14:49:35.463387+00
1284	Saint Catherine	14	112	2019-09-04 14:49:35.472668+00
1285	‘Ajlūn	AJ	113	2019-09-04 14:49:35.485268+00
1286	‘Ammān (Al ‘Aşimah)	AM	113	2019-09-04 14:49:35.494499+00
1287	Al ‘Aqabah	AQ	113	2019-09-04 14:49:35.502667+00
1288	Aţ Ţafīlah	AT	113	2019-09-04 14:49:35.511415+00
1289	Az Zarqā'	AZ	113	2019-09-04 14:49:35.522754+00
1290	Al Balqā'	BA	113	2019-09-04 14:49:35.531981+00
1291	Irbid	IR	113	2019-09-04 14:49:35.540298+00
1292	Jarash	JA	113	2019-09-04 14:49:35.548703+00
1293	Al Karak	KA	113	2019-09-04 14:49:35.558278+00
1294	Al Mafraq	MA	113	2019-09-04 14:49:35.572247+00
1295	Mādabā	MD	113	2019-09-04 14:49:35.584619+00
1296	Ma‘ān	MN	113	2019-09-04 14:49:35.597127+00
1297	Hokkaido	01	114	2019-09-04 14:49:35.609812+00
1298	Aomori	02	114	2019-09-04 14:49:35.619653+00
1299	Iwate	03	114	2019-09-04 14:49:35.628779+00
1300	Miyagi	04	114	2019-09-04 14:49:35.637935+00
1301	Akita	05	114	2019-09-04 14:49:35.646932+00
1302	Yamagata	06	114	2019-09-04 14:49:35.65578+00
1303	Fukushima	07	114	2019-09-04 14:49:35.664599+00
1304	Ibaraki	08	114	2019-09-04 14:49:35.673515+00
1305	Tochigi	09	114	2019-09-04 14:49:35.68325+00
1306	Gunma	10	114	2019-09-04 14:49:35.692152+00
1307	Saitama	11	114	2019-09-04 14:49:35.700756+00
1308	Chiba	12	114	2019-09-04 14:49:35.709516+00
1309	Tokyo	13	114	2019-09-04 14:49:35.718864+00
1310	Kanagawa	14	114	2019-09-04 14:49:35.728137+00
1311	Niigata	15	114	2019-09-04 14:49:35.73722+00
1312	Toyama	16	114	2019-09-04 14:49:35.745935+00
1313	Ishikawa	17	114	2019-09-04 14:49:35.754361+00
1314	Fukui	18	114	2019-09-04 14:49:35.763446+00
1315	Yamanashi	19	114	2019-09-04 14:49:35.772703+00
1316	Nagano	20	114	2019-09-04 14:49:35.782694+00
1317	Gifu	21	114	2019-09-04 14:49:35.790648+00
1318	Shizuoka	22	114	2019-09-04 14:49:35.799183+00
1319	Aichi	23	114	2019-09-04 14:49:35.813273+00
1320	Mie	24	114	2019-09-04 14:49:35.822466+00
1321	Shiga	25	114	2019-09-04 14:49:35.831008+00
1322	Kyoto	26	114	2019-09-04 14:49:35.883273+00
1323	Osaka	27	114	2019-09-04 14:49:35.909647+00
1324	Hyogo	28	114	2019-09-04 14:49:35.92207+00
1325	Nara	29	114	2019-09-04 14:49:35.93556+00
1326	Wakayama	30	114	2019-09-04 14:49:35.947095+00
1327	Tottori	31	114	2019-09-04 14:49:35.967163+00
1328	Shimane	32	114	2019-09-04 14:49:35.980567+00
1329	Okayama	33	114	2019-09-04 14:49:35.995909+00
1330	Hiroshima	34	114	2019-09-04 14:49:36.01818+00
1331	Yamaguchi	35	114	2019-09-04 14:49:36.030528+00
1332	Tokushima	36	114	2019-09-04 14:49:36.042818+00
1333	Kagawa	37	114	2019-09-04 14:49:36.054766+00
1334	Ehime	38	114	2019-09-04 14:49:36.069384+00
1335	Kochi	39	114	2019-09-04 14:49:36.083659+00
1336	Fukuoka	40	114	2019-09-04 14:49:36.102752+00
1337	Saga	41	114	2019-09-04 14:49:36.115332+00
1338	Nagasaki	42	114	2019-09-04 14:49:36.125827+00
1339	Kumamoto	43	114	2019-09-04 14:49:36.137879+00
1340	Oita	44	114	2019-09-04 14:49:36.149134+00
1341	Miyazaki	45	114	2019-09-04 14:49:36.159842+00
1342	Kagoshima	46	114	2019-09-04 14:49:36.170791+00
1343	Okinawa	47	114	2019-09-04 14:49:36.180717+00
1344	Baringo	01	115	2019-09-04 14:49:36.194726+00
1345	Bomet	02	115	2019-09-04 14:49:36.207492+00
1346	Bungoma	03	115	2019-09-04 14:49:36.223257+00
1347	Busia	04	115	2019-09-04 14:49:36.234805+00
1348	Elgeyo/Marakwet	05	115	2019-09-04 14:49:36.254714+00
1349	Embu	06	115	2019-09-04 14:49:36.267321+00
1350	Garissa	07	115	2019-09-04 14:49:36.280121+00
1351	Homa Bay	08	115	2019-09-04 14:49:36.292948+00
1352	Isiolo	09	115	2019-09-04 14:49:36.305301+00
1353	Kajiado	10	115	2019-09-04 14:49:36.317085+00
1354	Kakamega	11	115	2019-09-04 14:49:36.328182+00
1355	Kericho	12	115	2019-09-04 14:49:36.340657+00
1356	Kiambu	13	115	2019-09-04 14:49:36.354695+00
1357	Kilifi	14	115	2019-09-04 14:49:36.370116+00
1358	Kirinyaga	15	115	2019-09-04 14:49:36.383744+00
1359	Kisii	16	115	2019-09-04 14:49:36.396498+00
1360	Kisumu	17	115	2019-09-04 14:49:36.407859+00
1361	Kitui	18	115	2019-09-04 14:49:36.417391+00
1362	Kwale	19	115	2019-09-04 14:49:36.430431+00
1363	Laikipia	20	115	2019-09-04 14:49:36.440064+00
1364	Lamu	21	115	2019-09-04 14:49:36.448934+00
1365	Machakos	22	115	2019-09-04 14:49:36.461133+00
1366	Makueni	23	115	2019-09-04 14:49:36.472382+00
1367	Mandera	24	115	2019-09-04 14:49:36.481721+00
1368	Marsabit	25	115	2019-09-04 14:49:36.492475+00
1369	Meru	26	115	2019-09-04 14:49:36.500808+00
1370	Migori	27	115	2019-09-04 14:49:36.510393+00
1371	Mombasa	28	115	2019-09-04 14:49:36.526541+00
1372	Murang'a	29	115	2019-09-04 14:49:36.541803+00
1373	Nairobi City	30	115	2019-09-04 14:49:36.555011+00
1374	Nakuru	31	115	2019-09-04 14:49:36.568793+00
1375	Nandi	32	115	2019-09-04 14:49:36.584523+00
1376	Narok	33	115	2019-09-04 14:49:36.610454+00
1377	Nyamira	34	115	2019-09-04 14:49:36.624642+00
1378	Nyandarua	35	115	2019-09-04 14:49:36.637625+00
1379	Nyeri	36	115	2019-09-04 14:49:36.651856+00
1380	Samburu	37	115	2019-09-04 14:49:36.66636+00
1381	Siaya	38	115	2019-09-04 14:49:36.68844+00
1382	Taita/Taveta	39	115	2019-09-04 14:49:36.703716+00
1383	Tana River	40	115	2019-09-04 14:49:36.717239+00
1384	Tharaka-Nithi	41	115	2019-09-04 14:49:36.727615+00
1385	Trans Nzoia	42	115	2019-09-04 14:49:36.737743+00
1386	Turkana	43	115	2019-09-04 14:49:36.747183+00
1387	Uasin Gishu	44	115	2019-09-04 14:49:36.756639+00
1388	Vihiga	45	115	2019-09-04 14:49:36.766985+00
1389	Wajir	46	115	2019-09-04 14:49:36.77739+00
1390	West Pokot	47	115	2019-09-04 14:49:36.788268+00
1391	Batken	B	116	2019-09-04 14:49:36.806557+00
1392	Chü	C	116	2019-09-04 14:49:36.8192+00
1393	Bishkek	GB	116	2019-09-04 14:49:36.832007+00
1394	Jalal-Abad	J	116	2019-09-04 14:49:36.845854+00
1395	Naryn	N	116	2019-09-04 14:49:36.865525+00
1396	Osh	O	116	2019-09-04 14:49:36.886751+00
1397	Talas	T	116	2019-09-04 14:49:36.898977+00
1398	Ysyk-Köl	Y	116	2019-09-04 14:49:36.909701+00
1399	Banteay Mean Chey	1	117	2019-09-04 14:49:36.92414+00
1400	Krachoh	10	117	2019-09-04 14:49:36.936254+00
1401	Mondol Kiri	11	117	2019-09-04 14:49:36.964405+00
1402	Phnom Penh	12	117	2019-09-04 14:49:36.974548+00
1403	Preah Vihear	13	117	2019-09-04 14:49:36.984097+00
1404	Prey Veaeng	14	117	2019-09-04 14:49:36.995157+00
1405	Pousaat	15	117	2019-09-04 14:49:37.005021+00
1406	Rotanak Kiri	16	117	2019-09-04 14:49:37.019335+00
1407	Siem Reab	17	117	2019-09-04 14:49:37.030743+00
1408	Krong Preah Sihanouk	18	117	2019-09-04 14:49:37.042959+00
1409	Stueng Traeng	19	117	2019-09-04 14:49:37.062437+00
1410	Battambang	2	117	2019-09-04 14:49:37.074813+00
1411	Svaay Rieng	20	117	2019-09-04 14:49:37.085542+00
1412	Taakaev	21	117	2019-09-04 14:49:37.097035+00
1413	Otdar Mean Chey	22	117	2019-09-04 14:49:37.119296+00
1414	Krong Kaeb	23	117	2019-09-04 14:49:37.131255+00
1415	Krong Pailin	24	117	2019-09-04 14:49:37.148536+00
1416	Kampong Cham	3	117	2019-09-04 14:49:37.160721+00
1417	Kampong Chhnang	4	117	2019-09-04 14:49:37.172375+00
1418	Kampong Speu	5	117	2019-09-04 14:49:37.184232+00
1419	Kampong Thom	6	117	2019-09-04 14:49:37.1956+00
1420	Kampot	7	117	2019-09-04 14:49:37.21236+00
1421	Kandal	8	117	2019-09-04 14:49:37.222391+00
1422	Kach Kong	9	117	2019-09-04 14:49:37.233784+00
1423	Gilbert Islands	G	118	2019-09-04 14:49:37.255858+00
1424	Line Islands	L	118	2019-09-04 14:49:37.268642+00
1425	Phoenix Islands	P	118	2019-09-04 14:49:37.281257+00
1426	Andjouân (Anjwān)	A	119	2019-09-04 14:49:37.294469+00
1427	Andjazîdja (Anjazījah)	G	119	2019-09-04 14:49:37.302907+00
1428	Moûhîlî (Mūhīlī)	M	119	2019-09-04 14:49:37.312327+00
1429	Saint Kitts	K	120	2019-09-04 14:49:37.326601+00
1430	Nevis	N	120	2019-09-04 14:49:37.335846+00
1431	P’yŏngyang	01	121	2019-09-04 14:49:37.34759+00
1432	P’yŏngan-namdo	02	121	2019-09-04 14:49:37.357622+00
1433	P’yŏngan-bukto	03	121	2019-09-04 14:49:37.367203+00
1434	Chagang-do	04	121	2019-09-04 14:49:37.375648+00
1435	Hwanghae-namdo	05	121	2019-09-04 14:49:37.385481+00
1436	Hwanghae-bukto	06	121	2019-09-04 14:49:37.393872+00
1437	Kangwŏn-do	07	121	2019-09-04 14:49:37.402905+00
1438	Hamgyŏng-namdo	08	121	2019-09-04 14:49:37.411722+00
1439	Hamgyŏng-bukto	09	121	2019-09-04 14:49:37.419911+00
1440	Yanggang-do	10	121	2019-09-04 14:49:37.429812+00
1441	Nasŏn (Najin-Sŏnbong)	13	121	2019-09-04 14:49:37.440065+00
1442	Seoul Teugbyeolsi	11	122	2019-09-04 14:49:37.457168+00
1443	Busan Gwang'yeogsi	26	122	2019-09-04 14:49:37.466009+00
1444	Daegu Gwang'yeogsi	27	122	2019-09-04 14:49:37.474458+00
1445	Incheon Gwang'yeogsi	28	122	2019-09-04 14:49:37.483215+00
1446	Gwangju Gwang'yeogsi	29	122	2019-09-04 14:49:37.495621+00
1447	Daejeon Gwang'yeogsi	30	122	2019-09-04 14:49:37.504065+00
1448	Ulsan Gwang'yeogsi	31	122	2019-09-04 14:49:37.512938+00
1449	Gyeonggido	41	122	2019-09-04 14:49:37.522054+00
1450	Gang'weondo	42	122	2019-09-04 14:49:37.531048+00
1451	Chungcheongbukdo	43	122	2019-09-04 14:49:37.543572+00
1452	Chungcheongnamdo	44	122	2019-09-04 14:49:37.561536+00
1453	Jeonrabukdo	45	122	2019-09-04 14:49:37.571027+00
1454	Jeonranamdo	46	122	2019-09-04 14:49:37.580185+00
1455	Gyeongsangbukdo	47	122	2019-09-04 14:49:37.58949+00
1456	Gyeongsangnamdo	48	122	2019-09-04 14:49:37.599512+00
1457	Jejudo	49	122	2019-09-04 14:49:37.608244+00
1458	Al Ahmadi	AH	123	2019-09-04 14:49:37.619944+00
1459	Al Farwānīyah	FA	123	2019-09-04 14:49:37.628468+00
1460	Hawallī	HA	123	2019-09-04 14:49:37.63661+00
1461	Al Jahrrā’	JA	123	2019-09-04 14:49:37.646078+00
1462	Al Kuwayt (Al ‘Āşimah)	KU	123	2019-09-04 14:49:37.657467+00
1463	Mubārak al Kabīr	MU	123	2019-09-04 14:49:37.666147+00
1464	Aqmola oblysy	AKM	125	2019-09-04 14:49:37.677684+00
1465	Aqtöbe oblysy	AKT	125	2019-09-04 14:49:37.686338+00
1466	Almaty	ALA	125	2019-09-04 14:49:37.695039+00
1467	Almaty oblysy	ALM	125	2019-09-04 14:49:37.714823+00
1468	Astana	AST	125	2019-09-04 14:49:37.724343+00
1469	Atyraū oblysy	ATY	125	2019-09-04 14:49:37.733424+00
1470	Qaraghandy oblysy	KAR	125	2019-09-04 14:49:37.743398+00
1471	Qostanay oblysy	KUS	125	2019-09-04 14:49:37.750987+00
1472	Qyzylorda oblysy	KZY	125	2019-09-04 14:49:37.759909+00
1473	Mangghystaū oblysy	MAN	125	2019-09-04 14:49:37.768546+00
1474	Pavlodar oblysy	PAV	125	2019-09-04 14:49:37.777021+00
1475	Soltüstik Quzaqstan oblysy	SEV	125	2019-09-04 14:49:37.785683+00
1476	Shyghys Qazaqstan oblysy	VOS	125	2019-09-04 14:49:37.794951+00
1477	Ongtüstik Qazaqstan oblysy	YUZ	125	2019-09-04 14:49:37.80356+00
1478	Batys Quzaqstan oblysy	ZAP	125	2019-09-04 14:49:37.813997+00
1479	Zhambyl oblysy	ZHA	125	2019-09-04 14:49:37.822747+00
1480	Attapu	AT	126	2019-09-04 14:49:37.833807+00
1481	Bokèo	BK	126	2019-09-04 14:49:37.842391+00
1482	Bolikhamxai	BL	126	2019-09-04 14:49:37.851015+00
1483	Champasak	CH	126	2019-09-04 14:49:37.860487+00
1484	Houaphan	HO	126	2019-09-04 14:49:37.86946+00
1485	Khammouan	KH	126	2019-09-04 14:49:37.878198+00
1486	Louang Namtha	LM	126	2019-09-04 14:49:37.887455+00
1487	Louangphabang	LP	126	2019-09-04 14:49:37.896757+00
1488	Oudômxai	OU	126	2019-09-04 14:49:37.905076+00
1489	Phôngsali	PH	126	2019-09-04 14:49:37.913984+00
1490	Salavan	SL	126	2019-09-04 14:49:37.922931+00
1491	Savannakhét	SV	126	2019-09-04 14:49:37.932576+00
1492	Vientiane	VI	126	2019-09-04 14:49:37.941329+00
1493	Xaignabouli	XA	126	2019-09-04 14:49:37.952713+00
1494	Xékong	XE	126	2019-09-04 14:49:37.961141+00
1495	Xiangkhouang	XI	126	2019-09-04 14:49:37.969301+00
1496	Xaisômboun	XS	126	2019-09-04 14:49:37.97841+00
1497	Aakkâr	AK	127	2019-09-04 14:49:37.989701+00
1498	Liban-Nord	AS	127	2019-09-04 14:49:38.002367+00
1499	Beyrouth	BA	127	2019-09-04 14:49:38.013164+00
1500	Baalbek-Hermel	BH	127	2019-09-04 14:49:38.022172+00
1501	Béqaa	BI	127	2019-09-04 14:49:38.030276+00
1502	Liban-Sud	JA	127	2019-09-04 14:49:38.039007+00
1503	Mont-Liban	JL	127	2019-09-04 14:49:38.048564+00
1504	Nabatîyé	NA	127	2019-09-04 14:49:38.059994+00
1505	Balzers	01	129	2019-09-04 14:49:38.072155+00
1506	Eschen	02	129	2019-09-04 14:49:38.081163+00
1507	Gamprin	03	129	2019-09-04 14:49:38.091336+00
1508	Mauren	04	129	2019-09-04 14:49:38.10083+00
1509	Planken	05	129	2019-09-04 14:49:38.109763+00
1510	Ruggell	06	129	2019-09-04 14:49:38.118555+00
1511	Schaan	07	129	2019-09-04 14:49:38.127103+00
1512	Schellenberg	08	129	2019-09-04 14:49:38.134864+00
1513	Triesen	09	129	2019-09-04 14:49:38.142897+00
1514	Triesenberg	10	129	2019-09-04 14:49:38.151023+00
1515	Vaduz	11	129	2019-09-04 14:49:38.159524+00
1516	Basnāhira paḷāta	1	130	2019-09-04 14:49:38.170987+00
1517	Madhyama paḷāta	2	130	2019-09-04 14:49:38.180605+00
1518	Dakuṇu paḷāta	3	130	2019-09-04 14:49:38.191737+00
1519	Uturu paḷāta	4	130	2019-09-04 14:49:38.200522+00
1520	Næ̆gĕnahira paḷāta	5	130	2019-09-04 14:49:38.209637+00
1521	Vayamba paḷāta	6	130	2019-09-04 14:49:38.223179+00
1522	Uturumæ̆da paḷāta	7	130	2019-09-04 14:49:38.232355+00
1523	Ūva paḷāta	8	130	2019-09-04 14:49:38.242751+00
1524	Sabaragamuva paḷāta	9	130	2019-09-04 14:49:38.25247+00
1525	Bong	BG	131	2019-09-04 14:49:38.264043+00
1526	Bomi	BM	131	2019-09-04 14:49:38.272305+00
1527	Grand Cape Mount	CM	131	2019-09-04 14:49:38.280277+00
1528	Grand Bassa	GB	131	2019-09-04 14:49:38.288741+00
1529	Grand Gedeh	GG	131	2019-09-04 14:49:38.297625+00
1530	Grand Kru	GK	131	2019-09-04 14:49:38.306085+00
1531	Lofa	LO	131	2019-09-04 14:49:38.314603+00
1532	Margibi	MG	131	2019-09-04 14:49:38.322901+00
1533	Montserrado	MO	131	2019-09-04 14:49:38.331857+00
1534	Maryland	MY	131	2019-09-04 14:49:38.340523+00
1535	Nimba	NI	131	2019-09-04 14:49:38.350448+00
1536	Rivercess	RI	131	2019-09-04 14:49:38.359927+00
1537	Sinoe	SI	131	2019-09-04 14:49:38.367585+00
1538	Maseru	A	132	2019-09-04 14:49:38.378283+00
1539	Butha-Buthe	B	132	2019-09-04 14:49:38.391436+00
1540	Leribe	C	132	2019-09-04 14:49:38.40042+00
1541	Berea	D	132	2019-09-04 14:49:38.409028+00
1542	Mafeteng	E	132	2019-09-04 14:49:38.418249+00
1543	Mohale's Hoek	F	132	2019-09-04 14:49:38.426848+00
1544	Quthing	G	132	2019-09-04 14:49:38.435249+00
1545	Qacha's Nek	H	132	2019-09-04 14:49:38.44324+00
1546	Mokhotlong	J	132	2019-09-04 14:49:38.452075+00
1547	Thaba-Tseka	K	132	2019-09-04 14:49:38.460746+00
1548	Alytaus Apskritis	AL	133	2019-09-04 14:49:38.472051+00
1549	Klaipėdos Apskritis	KL	133	2019-09-04 14:49:38.479718+00
1550	Kauno Apskritis	KU	133	2019-09-04 14:49:38.488145+00
1551	Marijampolės Apskritis	MR	133	2019-09-04 14:49:38.497285+00
1552	Panevėžio Apskritis	PN	133	2019-09-04 14:49:38.505383+00
1553	Šiaulių Apskritis	SA	133	2019-09-04 14:49:38.514091+00
1554	Tauragés Apskritis	TA	133	2019-09-04 14:49:38.522693+00
1555	Telšių Apskritis	TE	133	2019-09-04 14:49:38.532022+00
1556	Utenos Apskritis	UT	133	2019-09-04 14:49:38.540765+00
1557	Vilniaus Apskritis	VL	133	2019-09-04 14:49:38.553978+00
1558	Diekirch	D	134	2019-09-04 14:49:38.566697+00
1559	Grevenmacher	G	134	2019-09-04 14:49:38.575215+00
1560	Luxembourg	L	134	2019-09-04 14:49:38.583844+00
1561	Aglonas novads	001	135	2019-09-04 14:49:38.595648+00
1562	Aizkraukles novads	002	135	2019-09-04 14:49:38.604507+00
1563	Aizputes novads	003	135	2019-09-04 14:49:38.612895+00
1564	Aknīstes novads	004	135	2019-09-04 14:49:38.62119+00
1565	Alojas novads	005	135	2019-09-04 14:49:38.630026+00
1566	Alsungas novads	006	135	2019-09-04 14:49:38.638274+00
1567	Alūksnes novads	007	135	2019-09-04 14:49:38.646323+00
1568	Amatas novads	008	135	2019-09-04 14:49:38.655256+00
1569	Apes novads	009	135	2019-09-04 14:49:38.664253+00
1570	Auces novads	010	135	2019-09-04 14:49:38.673088+00
1571	Ādažu novads	011	135	2019-09-04 14:49:38.68134+00
1572	Babītes novads	012	135	2019-09-04 14:49:38.689935+00
1573	Baldones novads	013	135	2019-09-04 14:49:38.697925+00
1574	Baltinavas novads	014	135	2019-09-04 14:49:38.707264+00
1575	Balvu novads	015	135	2019-09-04 14:49:38.715811+00
1576	Bauskas novads	016	135	2019-09-04 14:49:38.724189+00
1577	Beverīnas novads	017	135	2019-09-04 14:49:38.732451+00
1578	Brocēnu novads	018	135	2019-09-04 14:49:38.741972+00
1579	Burtnieku novads	019	135	2019-09-04 14:49:38.75071+00
1580	Carnikavas novads	020	135	2019-09-04 14:49:38.759324+00
1581	Cesvaines novads	021	135	2019-09-04 14:49:38.768086+00
1582	Cēsu novads	022	135	2019-09-04 14:49:38.776136+00
1583	Ciblas novads	023	135	2019-09-04 14:49:38.784784+00
1584	Dagdas novads	024	135	2019-09-04 14:49:38.793232+00
1585	Daugavpils novads	025	135	2019-09-04 14:49:38.801985+00
1586	Dobeles novads	026	135	2019-09-04 14:49:38.812349+00
1587	Dundagas novads	027	135	2019-09-04 14:49:38.820917+00
1588	Durbes novads	028	135	2019-09-04 14:49:38.829794+00
1589	Engures novads	029	135	2019-09-04 14:49:38.838504+00
1590	Ērgļu novads	030	135	2019-09-04 14:49:38.847079+00
1591	Garkalnes novads	031	135	2019-09-04 14:49:38.856065+00
1592	Grobiņas novads	032	135	2019-09-04 14:49:38.865027+00
1593	Gulbenes novads	033	135	2019-09-04 14:49:38.874616+00
1594	Iecavas novads	034	135	2019-09-04 14:49:38.889119+00
1595	Ikšķiles novads	035	135	2019-09-04 14:49:38.898521+00
1596	Ilūkstes novads	036	135	2019-09-04 14:49:38.907497+00
1597	Inčukalna novads	037	135	2019-09-04 14:49:38.916793+00
1598	Jaunjelgavas novads	038	135	2019-09-04 14:49:38.925633+00
1599	Jaunpiebalgas novads	039	135	2019-09-04 14:49:38.934368+00
1600	Jaunpils novads	040	135	2019-09-04 14:49:38.942682+00
1601	Jelgavas novads	041	135	2019-09-04 14:49:38.950891+00
1602	Jēkabpils novads	042	135	2019-09-04 14:49:38.962275+00
1603	Kandavas novads	043	135	2019-09-04 14:49:38.970856+00
1604	Kārsavas novads	044	135	2019-09-04 14:49:38.979404+00
1605	Kocēnu novads	045	135	2019-09-04 14:49:38.98821+00
1606	Kokneses novads	046	135	2019-09-04 14:49:38.998416+00
1607	Krāslavas novads	047	135	2019-09-04 14:49:39.006497+00
1608	Krimuldas novads	048	135	2019-09-04 14:49:39.015196+00
1609	Krustpils novads	049	135	2019-09-04 14:49:39.023935+00
1610	Kuldīgas novads	050	135	2019-09-04 14:49:39.032129+00
1611	Ķeguma novads	051	135	2019-09-04 14:49:39.040591+00
1612	Ķekavas novads	052	135	2019-09-04 14:49:39.049179+00
1613	Lielvārdes novads	053	135	2019-09-04 14:49:39.057554+00
1614	Limbažu novads	054	135	2019-09-04 14:49:39.06571+00
1615	Līgatnes novads	055	135	2019-09-04 14:49:39.075236+00
1616	Līvānu novads	056	135	2019-09-04 14:49:39.084844+00
1617	Lubānas novads	057	135	2019-09-04 14:49:39.097083+00
1618	Ludzas novads	058	135	2019-09-04 14:49:39.106+00
1619	Madonas novads	059	135	2019-09-04 14:49:39.116711+00
1620	Mazsalacas novads	060	135	2019-09-04 14:49:39.124914+00
1621	Mālpils novads	061	135	2019-09-04 14:49:39.133859+00
1622	Mārupes novads	062	135	2019-09-04 14:49:39.14258+00
1623	Mērsraga novads	063	135	2019-09-04 14:49:39.151301+00
1624	Naukšēnu novads	064	135	2019-09-04 14:49:39.159501+00
1625	Neretas novads	065	135	2019-09-04 14:49:39.168265+00
1626	Nīcas novads	066	135	2019-09-04 14:49:39.176754+00
1627	Ogres novads	067	135	2019-09-04 14:49:39.186253+00
1628	Olaines novads	068	135	2019-09-04 14:49:39.19475+00
1629	Ozolnieku novads	069	135	2019-09-04 14:49:39.20351+00
1630	Pārgaujas novads	070	135	2019-09-04 14:49:39.212266+00
1631	Pāvilostas novads	071	135	2019-09-04 14:49:39.220586+00
1632	Pļaviņu novads	072	135	2019-09-04 14:49:39.229096+00
1633	Preiļu novads	073	135	2019-09-04 14:49:39.23735+00
1634	Priekules novads	074	135	2019-09-04 14:49:39.246897+00
1635	Priekuļu novads	075	135	2019-09-04 14:49:39.256152+00
1636	Raunas novads	076	135	2019-09-04 14:49:39.265286+00
1637	Rēzeknes novads	077	135	2019-09-04 14:49:39.27582+00
1638	Riebiņu novads	078	135	2019-09-04 14:49:39.285808+00
1639	Rojas novads	079	135	2019-09-04 14:49:39.294628+00
1640	Ropažu novads	080	135	2019-09-04 14:49:39.302787+00
1641	Rucavas novads	081	135	2019-09-04 14:49:39.312901+00
1642	Rugāju novads	082	135	2019-09-04 14:49:39.322147+00
1643	Rundāles novads	083	135	2019-09-04 14:49:39.331059+00
1644	Rūjienas novads	084	135	2019-09-04 14:49:39.34014+00
1645	Salas novads	085	135	2019-09-04 14:49:39.348921+00
1646	Salacgrīvas novads	086	135	2019-09-04 14:49:39.357739+00
1647	Salaspils novads	087	135	2019-09-04 14:49:39.36718+00
1648	Saldus novads	088	135	2019-09-04 14:49:39.375704+00
1649	Saulkrastu novads	089	135	2019-09-04 14:49:39.385996+00
1650	Sējas novads	090	135	2019-09-04 14:49:39.394506+00
1651	Siguldas novads	091	135	2019-09-04 14:49:39.404237+00
1652	Skrīveru novads	092	135	2019-09-04 14:49:39.412965+00
1653	Skrundas novads	093	135	2019-09-04 14:49:39.421685+00
1654	Smiltenes novads	094	135	2019-09-04 14:49:39.430682+00
1655	Stopiņu novads	095	135	2019-09-04 14:49:39.43878+00
1656	Strenču novads	096	135	2019-09-04 14:49:39.446998+00
1657	Talsu novads	097	135	2019-09-04 14:49:39.45638+00
1658	Tērvetes novads	098	135	2019-09-04 14:49:39.465754+00
1659	Tukuma novads	099	135	2019-09-04 14:49:39.474212+00
1660	Vaiņodes novads	100	135	2019-09-04 14:49:39.483291+00
1661	Valkas novads	101	135	2019-09-04 14:49:39.493186+00
1662	Varakļānu novads	102	135	2019-09-04 14:49:39.50326+00
1663	Vārkavas novads	103	135	2019-09-04 14:49:39.512129+00
1664	Vecpiebalgas novads	104	135	2019-09-04 14:49:39.521328+00
1665	Vecumnieku novads	105	135	2019-09-04 14:49:39.531443+00
1666	Ventspils novads	106	135	2019-09-04 14:49:39.540367+00
1667	Viesītes novads	107	135	2019-09-04 14:49:39.551071+00
1668	Viļakas novads	108	135	2019-09-04 14:49:39.561973+00
1669	Viļānu novads	109	135	2019-09-04 14:49:39.571085+00
1670	Zilupes novads	110	135	2019-09-04 14:49:39.579655+00
1671	Daugavpils	DGV	135	2019-09-04 14:49:39.588776+00
1672	Jelgava	JEL	135	2019-09-04 14:49:39.602838+00
1673	Jēkabpils	JKB	135	2019-09-04 14:49:39.612966+00
1674	Jūrmala	JUR	135	2019-09-04 14:49:39.622545+00
1675	Liepāja	LPX	135	2019-09-04 14:49:39.632425+00
1676	Rēzekne	REZ	135	2019-09-04 14:49:39.642347+00
1677	Rīga	RIX	135	2019-09-04 14:49:39.652816+00
1678	Ventspils	VEN	135	2019-09-04 14:49:39.662552+00
1679	Valmiera	VMR	135	2019-09-04 14:49:39.67174+00
1680	Banghāzī	BA	136	2019-09-04 14:49:39.683281+00
1681	Al Buţnān	BU	136	2019-09-04 14:49:39.692364+00
1682	Darnah	DR	136	2019-09-04 14:49:39.701555+00
1683	Ghāt	GT	136	2019-09-04 14:49:39.710765+00
1684	Al Jabal al Akhḑar	JA	136	2019-09-04 14:49:39.720056+00
1685	Jaghbūb	JB	136	2019-09-04 14:49:39.729321+00
1686	Al Jabal al Gharbī	JG	136	2019-09-04 14:49:39.738848+00
1687	Al Jifārah	JI	136	2019-09-04 14:49:39.748551+00
1688	Al Jufrah	JU	136	2019-09-04 14:49:39.757431+00
1689	Al Kufrah	KF	136	2019-09-04 14:49:39.766735+00
1690	Al Marqab	MB	136	2019-09-04 14:49:39.775776+00
1691	Mişrātah	MI	136	2019-09-04 14:49:39.784831+00
1692	Al Marj	MJ	136	2019-09-04 14:49:39.794025+00
1693	Murzuq	MQ	136	2019-09-04 14:49:39.802987+00
1694	Nālūt	NL	136	2019-09-04 14:49:39.812569+00
1695	An Nuqaţ al Khams	NQ	136	2019-09-04 14:49:39.82223+00
1696	Sabhā	SB	136	2019-09-04 14:49:39.831156+00
1697	Surt	SR	136	2019-09-04 14:49:39.839549+00
1698	Ţarābulus	TB	136	2019-09-04 14:49:39.847803+00
1699	Al Wāḩāt	WA	136	2019-09-04 14:49:39.857059+00
1700	Wādī al Ḩayāt	WD	136	2019-09-04 14:49:39.866262+00
1701	Wādī ash Shāţiʾ	WS	136	2019-09-04 14:49:39.875096+00
1702	Az Zāwiyah	ZA	136	2019-09-04 14:49:39.885393+00
1703	Tanger-Tétouan-Al Hoceïma	01	137	2019-09-04 14:49:39.897921+00
1704	L'Oriental	02	137	2019-09-04 14:49:39.906342+00
1705	Fès-Meknès	03	137	2019-09-04 14:49:39.915844+00
1706	Rabat-Salé-Kénitra	04	137	2019-09-04 14:49:39.924483+00
1707	Béni Mellal-Khénifra	05	137	2019-09-04 14:49:39.933211+00
1708	Casablanca-Settat	06	137	2019-09-04 14:49:39.941924+00
1709	Marrakech-Safi	07	137	2019-09-04 14:49:39.951207+00
1710	Drâa-Tafilalet	08	137	2019-09-04 14:49:39.960359+00
1711	Souss-Massa	09	137	2019-09-04 14:49:39.970647+00
1712	Guelmim-Oued Noun	10	137	2019-09-04 14:49:39.979469+00
1713	Laâyoune-Sakia El Hamra	11	137	2019-09-04 14:49:39.987931+00
1714	Dakhla-Oued Ed Dahab	12	137	2019-09-04 14:49:39.996868+00
1715	La Colle	CL	138	2019-09-04 14:49:40.008594+00
1716	La Condamine	CO	138	2019-09-04 14:49:40.017475+00
1717	Fontvieille	FO	138	2019-09-04 14:49:40.026711+00
1718	La Gare	GA	138	2019-09-04 14:49:40.034743+00
1719	Jardin Exotique	JE	138	2019-09-04 14:49:40.043911+00
1720	Larvotto	LA	138	2019-09-04 14:49:40.051468+00
1721	Malbousquet	MA	138	2019-09-04 14:49:40.060017+00
1722	Monte-Carlo	MC	138	2019-09-04 14:49:40.069967+00
1723	Moneghetti	MG	138	2019-09-04 14:49:40.079059+00
1724	Monaco-Ville	MO	138	2019-09-04 14:49:40.090097+00
1725	Moulins	MU	138	2019-09-04 14:49:40.098544+00
1726	Port-Hercule	PH	138	2019-09-04 14:49:40.107965+00
1727	Sainte-Dévote	SD	138	2019-09-04 14:49:40.11639+00
1728	La Source	SO	138	2019-09-04 14:49:40.124967+00
1729	Spélugues	SP	138	2019-09-04 14:49:40.133843+00
1730	Saint-Roman	SR	138	2019-09-04 14:49:40.141925+00
1731	Vallon de la Rousse	VR	138	2019-09-04 14:49:40.150971+00
1732	Anenii Noi	AN	139	2019-09-04 14:49:40.16296+00
1733	Bălți	BA	139	2019-09-04 14:49:40.171318+00
1734	Tighina	BD	139	2019-09-04 14:49:40.180411+00
1735	Briceni	BR	139	2019-09-04 14:49:40.18951+00
1736	Basarabeasca	BS	139	2019-09-04 14:49:40.197698+00
1737	Cahul	CA	139	2019-09-04 14:49:40.206465+00
1738	Călărași	CL	139	2019-09-04 14:49:40.215169+00
1739	Cimișlia	CM	139	2019-09-04 14:49:40.223421+00
1740	Criuleni	CR	139	2019-09-04 14:49:40.232636+00
1741	Căușeni	CS	139	2019-09-04 14:49:40.241268+00
1742	Cantemir	CT	139	2019-09-04 14:49:40.253033+00
1743	Chișinău	CU	139	2019-09-04 14:49:40.262675+00
1744	Dondușeni	DO	139	2019-09-04 14:49:40.277443+00
1745	Drochia	DR	139	2019-09-04 14:49:40.290194+00
1746	Dubăsari	DU	139	2019-09-04 14:49:40.299872+00
1747	Edineț	ED	139	2019-09-04 14:49:40.309253+00
1748	Fălești	FA	139	2019-09-04 14:49:40.318329+00
1749	Florești	FL	139	2019-09-04 14:49:40.327653+00
1750	Găgăuzia, Unitatea teritorială autonomă	GA	139	2019-09-04 14:49:40.33636+00
1751	Glodeni	GL	139	2019-09-04 14:49:40.345293+00
1752	Hîncești	HI	139	2019-09-04 14:49:40.354611+00
1753	Ialoveni	IA	139	2019-09-04 14:49:40.362902+00
1754	Leova	LE	139	2019-09-04 14:49:40.371719+00
1755	Nisporeni	NI	139	2019-09-04 14:49:40.3808+00
1756	Ocnița	OC	139	2019-09-04 14:49:40.391719+00
1757	Orhei	OR	139	2019-09-04 14:49:40.400963+00
1758	Rezina	RE	139	2019-09-04 14:49:40.410156+00
1759	Rîșcani	RI	139	2019-09-04 14:49:40.419344+00
1760	Șoldănești	SD	139	2019-09-04 14:49:40.428387+00
1761	Sîngerei	SI	139	2019-09-04 14:49:40.437563+00
1762	Stînga Nistrului, unitatea teritorială din	SN	139	2019-09-04 14:49:40.446345+00
1763	Soroca	SO	139	2019-09-04 14:49:40.454661+00
1764	Strășeni	ST	139	2019-09-04 14:49:40.463572+00
1765	Ștefan Vodă	SV	139	2019-09-04 14:49:40.472562+00
1766	Taraclia	TA	139	2019-09-04 14:49:40.483344+00
1767	Telenești	TE	139	2019-09-04 14:49:40.491616+00
1768	Ungheni	UN	139	2019-09-04 14:49:40.501821+00
1769	Andrijevica	01	140	2019-09-04 14:49:40.513621+00
1770	Bar	02	140	2019-09-04 14:49:40.522679+00
1771	Berane	03	140	2019-09-04 14:49:40.532227+00
1772	Bijelo Polje	04	140	2019-09-04 14:49:40.54006+00
1773	Budva	05	140	2019-09-04 14:49:40.547702+00
1774	Cetinje	06	140	2019-09-04 14:49:40.555132+00
1775	Danilovgrad	07	140	2019-09-04 14:49:40.564287+00
1776	Herceg-Novi	08	140	2019-09-04 14:49:40.572828+00
1777	Kolašin	09	140	2019-09-04 14:49:40.580921+00
1778	Kotor	10	140	2019-09-04 14:49:40.58854+00
1779	Mojkovac	11	140	2019-09-04 14:49:40.59633+00
1780	Nikšić	12	140	2019-09-04 14:49:40.603852+00
1781	Plav	13	140	2019-09-04 14:49:40.611535+00
1782	Pljevlja	14	140	2019-09-04 14:49:40.61868+00
1783	Plužine	15	140	2019-09-04 14:49:40.625811+00
1784	Podgorica	16	140	2019-09-04 14:49:40.632774+00
1785	Rožaje	17	140	2019-09-04 14:49:40.640458+00
1786	Šavnik	18	140	2019-09-04 14:49:40.654545+00
1787	Tivat	19	140	2019-09-04 14:49:40.665144+00
1788	Ulcinj	20	140	2019-09-04 14:49:40.67403+00
1789	Žabljak	21	140	2019-09-04 14:49:40.68347+00
1790	Toamasina	A	142	2019-09-04 14:49:40.695446+00
1791	Antsiranana	D	142	2019-09-04 14:49:40.704846+00
1792	Fianarantsoa	F	142	2019-09-04 14:49:40.713538+00
1793	Mahajanga	M	142	2019-09-04 14:49:40.722946+00
1794	Antananarivo	T	142	2019-09-04 14:49:40.731192+00
1795	Toliara	U	142	2019-09-04 14:49:40.740521+00
1796	Ralik chain	L	143	2019-09-04 14:49:40.752395+00
1797	Ratak chain	T	143	2019-09-04 14:49:40.762068+00
1798	Aerodrom	01	144	2019-09-04 14:49:40.773834+00
1799	Aračinovo	02	144	2019-09-04 14:49:40.783033+00
1800	Berovo	03	144	2019-09-04 14:49:40.791603+00
1801	Bitola	04	144	2019-09-04 14:49:40.800415+00
1802	Bogdanci	05	144	2019-09-04 14:49:40.808658+00
1803	Bogovinje	06	144	2019-09-04 14:49:40.821427+00
1804	Bosilovo	07	144	2019-09-04 14:49:40.829474+00
1805	Brvenica	08	144	2019-09-04 14:49:40.837446+00
1806	Butel	09	144	2019-09-04 14:49:40.845079+00
1807	Valandovo	10	144	2019-09-04 14:49:40.852676+00
1808	Vasilevo	11	144	2019-09-04 14:49:40.863252+00
1809	Vevčani	12	144	2019-09-04 14:49:40.873148+00
1810	Veles	13	144	2019-09-04 14:49:40.882488+00
1811	Vinica	14	144	2019-09-04 14:49:40.892585+00
1812	Vraneštica	15	144	2019-09-04 14:49:40.901581+00
1813	Vrapčište	16	144	2019-09-04 14:49:40.911017+00
1814	Gazi Baba	17	144	2019-09-04 14:49:40.924156+00
1815	Gevgelija	18	144	2019-09-04 14:49:40.9334+00
1816	Gostivar	19	144	2019-09-04 14:49:40.9429+00
1817	Gradsko	20	144	2019-09-04 14:49:40.95225+00
1818	Debar	21	144	2019-09-04 14:49:40.962642+00
1819	Debarca	22	144	2019-09-04 14:49:40.971718+00
1820	Delčevo	23	144	2019-09-04 14:49:40.98009+00
1821	Demir Kapija	24	144	2019-09-04 14:49:40.988304+00
1822	Demir Hisar	25	144	2019-09-04 14:49:40.99614+00
1823	Dojran	26	144	2019-09-04 14:49:41.010946+00
1824	Dolneni	27	144	2019-09-04 14:49:41.043349+00
1825	Drugovo	28	144	2019-09-04 14:49:41.06852+00
1826	Gjorče Petrov	29	144	2019-09-04 14:49:41.078635+00
1827	Želino	30	144	2019-09-04 14:49:41.086816+00
1828	Zajas	31	144	2019-09-04 14:49:41.094526+00
1829	Zelenikovo	32	144	2019-09-04 14:49:41.10315+00
1830	Zrnovci	33	144	2019-09-04 14:49:41.123392+00
1831	Ilinden	34	144	2019-09-04 14:49:41.131403+00
1832	Jegunovce	35	144	2019-09-04 14:49:41.139653+00
1833	Kavadarci	36	144	2019-09-04 14:49:41.149176+00
1834	Karbinci	37	144	2019-09-04 14:49:41.157001+00
1835	Karpoš	38	144	2019-09-04 14:49:41.169461+00
1836	Kisela Voda	39	144	2019-09-04 14:49:41.176548+00
1837	Kičevo	40	144	2019-09-04 14:49:41.185664+00
1838	Konče	41	144	2019-09-04 14:49:41.193025+00
1839	Kočani	42	144	2019-09-04 14:49:41.200407+00
1840	Kratovo	43	144	2019-09-04 14:49:41.207601+00
1841	Kriva Palanka	44	144	2019-09-04 14:49:41.217185+00
1842	Krivogaštani	45	144	2019-09-04 14:49:41.227068+00
1843	Kruševo	46	144	2019-09-04 14:49:41.237064+00
1844	Kumanovo	47	144	2019-09-04 14:49:41.248168+00
1845	Lipkovo	48	144	2019-09-04 14:49:41.255991+00
1846	Lozovo	49	144	2019-09-04 14:49:41.267189+00
1847	Mavrovo-i-Rostuša	50	144	2019-09-04 14:49:41.276942+00
1848	Makedonska Kamenica	51	144	2019-09-04 14:49:41.288919+00
1849	Makedonski Brod	52	144	2019-09-04 14:49:41.302027+00
1850	Mogila	53	144	2019-09-04 14:49:41.314765+00
1851	Negotino	54	144	2019-09-04 14:49:41.325735+00
1852	Novaci	55	144	2019-09-04 14:49:41.334621+00
1853	Novo Selo	56	144	2019-09-04 14:49:41.342874+00
1854	Oslomej	57	144	2019-09-04 14:49:41.351602+00
1855	Ohrid	58	144	2019-09-04 14:49:41.360355+00
1856	Petrovec	59	144	2019-09-04 14:49:41.369779+00
1857	Pehčevo	60	144	2019-09-04 14:49:41.377738+00
1858	Plasnica	61	144	2019-09-04 14:49:41.388495+00
1859	Prilep	62	144	2019-09-04 14:49:41.398981+00
1860	Probištip	63	144	2019-09-04 14:49:41.411808+00
1861	Radoviš	64	144	2019-09-04 14:49:41.423085+00
1862	Rankovce	65	144	2019-09-04 14:49:41.435048+00
1863	Resen	66	144	2019-09-04 14:49:41.445086+00
1864	Rosoman	67	144	2019-09-04 14:49:41.453203+00
1865	Saraj	68	144	2019-09-04 14:49:41.462305+00
1866	Sveti Nikole	69	144	2019-09-04 14:49:41.471235+00
1867	Sopište	70	144	2019-09-04 14:49:41.485789+00
1868	Staro Nagoričane	71	144	2019-09-04 14:49:41.494182+00
1869	Struga	72	144	2019-09-04 14:49:41.505696+00
1870	Strumica	73	144	2019-09-04 14:49:41.518568+00
1871	Studeničani	74	144	2019-09-04 14:49:41.530321+00
1872	Tearce	75	144	2019-09-04 14:49:41.541005+00
1873	Tetovo	76	144	2019-09-04 14:49:41.551638+00
1874	Centar	77	144	2019-09-04 14:49:41.560859+00
1875	Centar Župa	78	144	2019-09-04 14:49:41.571877+00
1876	Čair	79	144	2019-09-04 14:49:41.582009+00
1877	Čaška	80	144	2019-09-04 14:49:41.590156+00
1878	Češinovo-Obleševo	81	144	2019-09-04 14:49:41.599015+00
1879	Čučer Sandevo	82	144	2019-09-04 14:49:41.607754+00
1880	Štip	83	144	2019-09-04 14:49:41.616232+00
1881	Šuto Orizari	84	144	2019-09-04 14:49:41.62758+00
1882	Kayes	1	145	2019-09-04 14:49:41.643542+00
1883	Koulikoro	2	145	2019-09-04 14:49:41.657023+00
1884	Sikasso	3	145	2019-09-04 14:49:41.667137+00
1885	Ségou	4	145	2019-09-04 14:49:41.679149+00
1886	Mopti	5	145	2019-09-04 14:49:41.689435+00
1887	Tombouctou	6	145	2019-09-04 14:49:41.70393+00
1888	Gao	7	145	2019-09-04 14:49:41.713913+00
1889	Kidal	8	145	2019-09-04 14:49:41.723194+00
1890	Bamako	BK0	145	2019-09-04 14:49:41.733205+00
1891	Sagaing	01	146	2019-09-04 14:49:41.745201+00
1892	Bago	02	146	2019-09-04 14:49:41.755344+00
1893	Magway	03	146	2019-09-04 14:49:41.766761+00
1894	Mandalay	04	146	2019-09-04 14:49:41.778877+00
1895	Tanintharyi	05	146	2019-09-04 14:49:41.789863+00
1896	Yangon	06	146	2019-09-04 14:49:41.799512+00
1897	Ayeyarwady	07	146	2019-09-04 14:49:41.807594+00
1898	Kachin	11	146	2019-09-04 14:49:41.815417+00
1899	Kayah	12	146	2019-09-04 14:49:41.824809+00
1900	Kayin	13	146	2019-09-04 14:49:41.833772+00
1901	Chin	14	146	2019-09-04 14:49:41.841669+00
1902	Mon	15	146	2019-09-04 14:49:41.850996+00
1903	Rakhine	16	146	2019-09-04 14:49:41.864067+00
1904	Shan	17	146	2019-09-04 14:49:41.87381+00
1905	Orhon	035	147	2019-09-04 14:49:41.888874+00
1906	Darhan uul	037	147	2019-09-04 14:49:41.900695+00
1907	Hentiy	039	147	2019-09-04 14:49:41.91179+00
1908	Hövsgöl	041	147	2019-09-04 14:49:41.924588+00
1909	Hovd	043	147	2019-09-04 14:49:41.938396+00
1910	Uvs	046	147	2019-09-04 14:49:41.946919+00
1911	Töv	047	147	2019-09-04 14:49:41.95562+00
1912	Selenge	049	147	2019-09-04 14:49:41.964688+00
1913	Sühbaatar	051	147	2019-09-04 14:49:41.974299+00
1914	Ömnögovi	053	147	2019-09-04 14:49:41.98323+00
1915	Övörhangay	055	147	2019-09-04 14:49:41.993373+00
1916	Dzavhan	057	147	2019-09-04 14:49:42.00752+00
1917	Dundgovi	059	147	2019-09-04 14:49:42.02001+00
1918	Dornod	061	147	2019-09-04 14:49:42.031856+00
1919	Dornogovi	063	147	2019-09-04 14:49:42.041666+00
1920	Govi-Sumber	064	147	2019-09-04 14:49:42.051261+00
1921	Govi-Altay	065	147	2019-09-04 14:49:42.060351+00
1922	Bulgan	067	147	2019-09-04 14:49:42.069771+00
1923	Bayanhongor	069	147	2019-09-04 14:49:42.078455+00
1924	Bayan-Ölgiy	071	147	2019-09-04 14:49:42.086158+00
1925	Arhangay	073	147	2019-09-04 14:49:42.097332+00
1926	Ulanbaatar	1	147	2019-09-04 14:49:42.107008+00
1927	Hodh ech Chargui	01	151	2019-09-04 14:49:42.122733+00
1928	Hodh el Charbi	02	151	2019-09-04 14:49:42.131536+00
1929	Assaba	03	151	2019-09-04 14:49:42.138947+00
1930	Gorgol	04	151	2019-09-04 14:49:42.151096+00
1931	Brakna	05	151	2019-09-04 14:49:42.159061+00
1932	Trarza	06	151	2019-09-04 14:49:42.169115+00
1933	Adrar	07	151	2019-09-04 14:49:42.179593+00
1934	Dakhlet Nouadhibou	08	151	2019-09-04 14:49:42.192365+00
1935	Tagant	09	151	2019-09-04 14:49:42.201924+00
1936	Guidimaka	10	151	2019-09-04 14:49:42.214309+00
1937	Tiris Zemmour	11	151	2019-09-04 14:49:42.226669+00
1938	Inchiri	12	151	2019-09-04 14:49:42.23492+00
1939	Nouakchott	NKC	151	2019-09-04 14:49:42.244262+00
1940	Attard	01	153	2019-09-04 14:49:42.255965+00
1941	Balzan	02	153	2019-09-04 14:49:42.264315+00
1942	Birgu	03	153	2019-09-04 14:49:42.273285+00
1943	Birkirkara	04	153	2019-09-04 14:49:42.284358+00
1944	Birżebbuġa	05	153	2019-09-04 14:49:42.295536+00
1945	Bormla	06	153	2019-09-04 14:49:42.304003+00
1946	Dingli	07	153	2019-09-04 14:49:42.313585+00
1947	Fgura	08	153	2019-09-04 14:49:42.322031+00
1948	Floriana	09	153	2019-09-04 14:49:42.329557+00
1949	Fontana	10	153	2019-09-04 14:49:42.338182+00
1950	Gudja	11	153	2019-09-04 14:49:42.348573+00
1951	Gżira	12	153	2019-09-04 14:49:42.357855+00
1952	Għajnsielem	13	153	2019-09-04 14:49:42.36692+00
1953	Għarb	14	153	2019-09-04 14:49:42.378984+00
1954	Għargħur	15	153	2019-09-04 14:49:42.39687+00
1955	Għasri	16	153	2019-09-04 14:49:42.407018+00
1956	Għaxaq	17	153	2019-09-04 14:49:42.416697+00
1957	Ħamrun	18	153	2019-09-04 14:49:42.425768+00
1958	Iklin	19	153	2019-09-04 14:49:42.435433+00
1959	Isla	20	153	2019-09-04 14:49:42.444965+00
1960	Kalkara	21	153	2019-09-04 14:49:42.454019+00
1961	Kerċem	22	153	2019-09-04 14:49:42.463543+00
1962	Kirkop	23	153	2019-09-04 14:49:42.472124+00
1963	Lija	24	153	2019-09-04 14:49:42.481135+00
1964	Luqa	25	153	2019-09-04 14:49:42.490953+00
1965	Marsa	26	153	2019-09-04 14:49:42.50034+00
1966	Marsaskala	27	153	2019-09-04 14:49:42.510239+00
1967	Marsaxlokk	28	153	2019-09-04 14:49:42.518215+00
1968	Mdina	29	153	2019-09-04 14:49:42.526024+00
1969	Mellieħa	30	153	2019-09-04 14:49:42.534045+00
1970	Mġarr	31	153	2019-09-04 14:49:42.541527+00
1971	Mosta	32	153	2019-09-04 14:49:42.552619+00
1972	Mqabba	33	153	2019-09-04 14:49:42.565006+00
1973	Msida	34	153	2019-09-04 14:49:42.575296+00
1974	Mtarfa	35	153	2019-09-04 14:49:42.584523+00
1975	Munxar	36	153	2019-09-04 14:49:42.595034+00
1976	Nadur	37	153	2019-09-04 14:49:42.60427+00
1977	Naxxar	38	153	2019-09-04 14:49:42.612918+00
1978	Paola	39	153	2019-09-04 14:49:42.622024+00
1979	Pembroke	40	153	2019-09-04 14:49:42.6328+00
1980	Pietà	41	153	2019-09-04 14:49:42.642885+00
1981	Qala	42	153	2019-09-04 14:49:42.653247+00
1982	Qormi	43	153	2019-09-04 14:49:42.662273+00
1983	Qrendi	44	153	2019-09-04 14:49:42.671164+00
1984	Rabat Għawdex	45	153	2019-09-04 14:49:42.680131+00
1985	Rabat Malta	46	153	2019-09-04 14:49:42.688273+00
1986	Safi	47	153	2019-09-04 14:49:42.6988+00
1987	San Ġiljan	48	153	2019-09-04 14:49:42.70694+00
1988	San Ġwann	49	153	2019-09-04 14:49:42.716054+00
1989	San Lawrenz	50	153	2019-09-04 14:49:42.724242+00
1990	San Pawl il-Baħar	51	153	2019-09-04 14:49:42.733095+00
1991	Sannat	52	153	2019-09-04 14:49:42.742126+00
1992	Santa Luċija	53	153	2019-09-04 14:49:42.751019+00
1993	Santa Venera	54	153	2019-09-04 14:49:42.76003+00
1994	Siġġiewi	55	153	2019-09-04 14:49:42.768973+00
1995	Sliema	56	153	2019-09-04 14:49:42.778363+00
1996	Swieqi	57	153	2019-09-04 14:49:42.787902+00
1997	Ta’ Xbiex	58	153	2019-09-04 14:49:42.796709+00
1998	Tarxien	59	153	2019-09-04 14:49:42.805473+00
1999	Valletta	60	153	2019-09-04 14:49:42.813899+00
2000	Xagħra	61	153	2019-09-04 14:49:42.822758+00
2001	Xewkija	62	153	2019-09-04 14:49:42.831386+00
2002	Xgħajra	63	153	2019-09-04 14:49:42.839368+00
2003	Żabbar	64	153	2019-09-04 14:49:42.84949+00
2004	Żebbuġ Għawdex	65	153	2019-09-04 14:49:42.858729+00
2005	Żebbuġ Malta	66	153	2019-09-04 14:49:42.867628+00
2006	Żejtun	67	153	2019-09-04 14:49:42.87617+00
2007	Żurrieq	68	153	2019-09-04 14:49:42.885592+00
2008	Agalega Islands	AG	154	2019-09-04 14:49:42.899168+00
2009	Black River	BL	154	2019-09-04 14:49:42.90822+00
2010	Beau Bassin-Rose Hill	BR	154	2019-09-04 14:49:42.917077+00
2011	Cargados Carajos Shoals	CC	154	2019-09-04 14:49:42.925874+00
2012	Curepipe	CU	154	2019-09-04 14:49:42.93414+00
2013	Flacq	FL	154	2019-09-04 14:49:42.942876+00
2014	Grand Port	GP	154	2019-09-04 14:49:42.951887+00
2015	Moka	MO	154	2019-09-04 14:49:42.960383+00
2016	Pamplemousses	PA	154	2019-09-04 14:49:42.969099+00
2017	Port Louis	PL	154	2019-09-04 14:49:42.978091+00
2018	Plaines Wilhems	PW	154	2019-09-04 14:49:42.991977+00
2019	Quatre Bornes	QB	154	2019-09-04 14:49:43.003297+00
2020	Rodrigues Island	RO	154	2019-09-04 14:49:43.013537+00
2021	Rivière du Rempart	RP	154	2019-09-04 14:49:43.024186+00
2022	Savanne	SA	154	2019-09-04 14:49:43.033425+00
2023	Vacoas-Phoenix	VP	154	2019-09-04 14:49:43.042716+00
2024	Central	CE	155	2019-09-04 14:49:43.062001+00
2025	Male	MLE	155	2019-09-04 14:49:43.071935+00
2026	North Central	NC	155	2019-09-04 14:49:43.081733+00
2027	North	NO	155	2019-09-04 14:49:43.092789+00
2028	South Central	SC	155	2019-09-04 14:49:43.104394+00
2029	South	SU	155	2019-09-04 14:49:43.114268+00
2030	Upper North	UN	155	2019-09-04 14:49:43.123443+00
2031	Upper South	US	155	2019-09-04 14:49:43.132386+00
2032	Central Region	C	156	2019-09-04 14:49:43.145399+00
2033	Northern Region	N	156	2019-09-04 14:49:43.155956+00
2034	Southern Region	S	156	2019-09-04 14:49:43.165101+00
2035	Aguascalientes	AGU	157	2019-09-04 14:49:43.17758+00
2036	Baja California	BCN	157	2019-09-04 14:49:43.186573+00
2037	Baja California Sur	BCS	157	2019-09-04 14:49:43.199456+00
2038	Campeche	CAM	157	2019-09-04 14:49:43.209778+00
2039	Chihuahua	CHH	157	2019-09-04 14:49:43.219686+00
2040	Chiapas	CHP	157	2019-09-04 14:49:43.235543+00
2041	Ciudad de México	CMX	157	2019-09-04 14:49:43.245029+00
2042	Coahuila de Zaragoza	COA	157	2019-09-04 14:49:43.25463+00
2043	Colima	COL	157	2019-09-04 14:49:43.26388+00
2044	Durango	DUR	157	2019-09-04 14:49:43.273316+00
2045	Guerrero	GRO	157	2019-09-04 14:49:43.282734+00
2046	Guanajuato	GUA	157	2019-09-04 14:49:43.292195+00
2047	Hidalgo	HID	157	2019-09-04 14:49:43.30303+00
2048	Jalisco	JAL	157	2019-09-04 14:49:43.313114+00
2049	México	MEX	157	2019-09-04 14:49:43.326474+00
2050	Michoacán de Ocampo	MIC	157	2019-09-04 14:49:43.336562+00
2051	Morelos	MOR	157	2019-09-04 14:49:43.346812+00
2052	Nayarit	NAY	157	2019-09-04 14:49:43.356728+00
2053	Nuevo León	NLE	157	2019-09-04 14:49:43.366397+00
2054	Oaxaca	OAX	157	2019-09-04 14:49:43.376411+00
2055	Puebla	PUE	157	2019-09-04 14:49:43.388724+00
2056	Querétaro	QUE	157	2019-09-04 14:49:43.401611+00
2057	Quintana Roo	ROO	157	2019-09-04 14:49:43.412821+00
2058	Sinaloa	SIN	157	2019-09-04 14:49:43.423757+00
2059	San Luis Potosí	SLP	157	2019-09-04 14:49:43.435338+00
2060	Sonora	SON	157	2019-09-04 14:49:43.447298+00
2061	Tabasco	TAB	157	2019-09-04 14:49:43.459915+00
2062	Tamaulipas	TAM	157	2019-09-04 14:49:43.471799+00
2063	Tlaxcala	TLA	157	2019-09-04 14:49:43.483387+00
2064	Veracruz de Ignacio de la Llave	VER	157	2019-09-04 14:49:43.494077+00
2065	Yucatán	YUC	157	2019-09-04 14:49:43.504972+00
2066	Zacatecas	ZAC	157	2019-09-04 14:49:43.516564+00
2067	Johor	01	158	2019-09-04 14:49:43.531802+00
2068	Kedah	02	158	2019-09-04 14:49:43.540964+00
2069	Kelantan	03	158	2019-09-04 14:49:43.550968+00
2070	Melaka	04	158	2019-09-04 14:49:43.563256+00
2071	Negeri Sembilan	05	158	2019-09-04 14:49:43.573515+00
2072	Pahang	06	158	2019-09-04 14:49:43.585286+00
2073	Pulau Pinang	07	158	2019-09-04 14:49:43.604151+00
2074	Perak	08	158	2019-09-04 14:49:43.616511+00
2075	Perlis	09	158	2019-09-04 14:49:43.628584+00
2076	Selangor	10	158	2019-09-04 14:49:43.642952+00
2077	Terengganu	11	158	2019-09-04 14:49:43.654636+00
2078	Sabah	12	158	2019-09-04 14:49:43.665425+00
2079	Sarawak	13	158	2019-09-04 14:49:43.677071+00
2080	Wilayah Persekutuan Kuala Lumpur	14	158	2019-09-04 14:49:43.69551+00
2081	Wilayah Persekutuan Labuan	15	158	2019-09-04 14:49:43.705065+00
2082	Wilayah Persekutuan Putrajaya	16	158	2019-09-04 14:49:43.714904+00
2083	Niassa	A	159	2019-09-04 14:49:43.730163+00
2084	Manica	B	159	2019-09-04 14:49:43.740181+00
2085	Gaza	G	159	2019-09-04 14:49:43.749844+00
2086	Inhambane	I	159	2019-09-04 14:49:43.760018+00
2087	Maputo	L	159	2019-09-04 14:49:43.791062+00
2088	Maputo (city)	MPM	159	2019-09-04 14:49:43.800231+00
2089	Nampula	N	159	2019-09-04 14:49:43.810113+00
2090	Cabo Delgado	P	159	2019-09-04 14:49:43.820102+00
2091	Zambézia	Q	159	2019-09-04 14:49:43.830236+00
2092	Sofala	S	159	2019-09-04 14:49:43.841368+00
2093	Tete	T	159	2019-09-04 14:49:43.850995+00
2094	Caprivi	CA	160	2019-09-04 14:49:43.86375+00
2095	Erongo	ER	160	2019-09-04 14:49:43.872124+00
2096	Hardap	HA	160	2019-09-04 14:49:43.881125+00
2097	Karas	KA	160	2019-09-04 14:49:43.892547+00
2098	Khomas	KH	160	2019-09-04 14:49:43.900926+00
2099	Kunene	KU	160	2019-09-04 14:49:43.909805+00
2100	Otjozondjupa	OD	160	2019-09-04 14:49:43.918211+00
2101	Omaheke	OH	160	2019-09-04 14:49:43.929878+00
2102	Okavango	OK	160	2019-09-04 14:49:43.939148+00
2103	Oshana	ON	160	2019-09-04 14:49:43.948517+00
2104	Omusati	OS	160	2019-09-04 14:49:43.957081+00
2105	Oshikoto	OT	160	2019-09-04 14:49:43.965743+00
2106	Ohangwena	OW	160	2019-09-04 14:49:43.97752+00
2107	Agadez	1	162	2019-09-04 14:49:43.99194+00
2108	Diffa	2	162	2019-09-04 14:49:44.000522+00
2109	Dosso	3	162	2019-09-04 14:49:44.010832+00
2110	Maradi	4	162	2019-09-04 14:49:44.019911+00
2111	Tahoua	5	162	2019-09-04 14:49:44.029892+00
2112	Tillabéri	6	162	2019-09-04 14:49:44.038706+00
2113	Zinder	7	162	2019-09-04 14:49:44.047672+00
2114	Niamey	8	162	2019-09-04 14:49:44.056244+00
2115	Abia	AB	164	2019-09-04 14:49:44.068647+00
2116	Adamawa	AD	164	2019-09-04 14:49:44.077623+00
2117	Akwa Ibom	AK	164	2019-09-04 14:49:44.086497+00
2118	Anambra	AN	164	2019-09-04 14:49:44.096129+00
2119	Bauchi	BA	164	2019-09-04 14:49:44.105662+00
2120	Benue	BE	164	2019-09-04 14:49:44.113672+00
2121	Borno	BO	164	2019-09-04 14:49:44.121868+00
2122	Bayelsa	BY	164	2019-09-04 14:49:44.130099+00
2123	Cross River	CR	164	2019-09-04 14:49:44.138093+00
2124	Delta	DE	164	2019-09-04 14:49:44.145903+00
2125	Ebonyi	EB	164	2019-09-04 14:49:44.154251+00
2126	Edo	ED	164	2019-09-04 14:49:44.16464+00
2127	Ekiti	EK	164	2019-09-04 14:49:44.173295+00
2128	Enugu	EN	164	2019-09-04 14:49:44.181966+00
2129	Abuja Capital Territory	FC	164	2019-09-04 14:49:44.190647+00
2130	Gombe	GO	164	2019-09-04 14:49:44.204314+00
2131	Imo	IM	164	2019-09-04 14:49:44.214797+00
2132	Jigawa	JI	164	2019-09-04 14:49:44.224529+00
2133	Kaduna	KD	164	2019-09-04 14:49:44.233957+00
2134	Kebbi	KE	164	2019-09-04 14:49:44.242984+00
2135	Kano	KN	164	2019-09-04 14:49:44.252485+00
2136	Kogi	KO	164	2019-09-04 14:49:44.261879+00
2137	Katsina	KT	164	2019-09-04 14:49:44.270958+00
2138	Kwara	KW	164	2019-09-04 14:49:44.280187+00
2139	Lagos	LA	164	2019-09-04 14:49:44.288424+00
2140	Nassarawa	NA	164	2019-09-04 14:49:44.297723+00
2141	Niger	NI	164	2019-09-04 14:49:44.306761+00
2142	Ogun	OG	164	2019-09-04 14:49:44.315727+00
2143	Ondo	ON	164	2019-09-04 14:49:44.32442+00
2144	Osun	OS	164	2019-09-04 14:49:44.333719+00
2145	Oyo	OY	164	2019-09-04 14:49:44.343171+00
2146	Plateau	PL	164	2019-09-04 14:49:44.354663+00
2147	Rivers	RI	164	2019-09-04 14:49:44.363062+00
2148	Sokoto	SO	164	2019-09-04 14:49:44.375871+00
2149	Taraba	TA	164	2019-09-04 14:49:44.388294+00
2150	Yobe	YO	164	2019-09-04 14:49:44.400491+00
2151	Zamfara	ZA	164	2019-09-04 14:49:44.413246+00
2152	Atlántico Norte	AN	165	2019-09-04 14:49:44.429744+00
2153	Atlántico Sur	AS	165	2019-09-04 14:49:44.440767+00
2154	Boaco	BO	165	2019-09-04 14:49:44.45243+00
2155	Carazo	CA	165	2019-09-04 14:49:44.463966+00
2156	Chinandega	CI	165	2019-09-04 14:49:44.475296+00
2157	Chontales	CO	165	2019-09-04 14:49:44.484971+00
2158	Estelí	ES	165	2019-09-04 14:49:44.494124+00
2159	Granada	GR	165	2019-09-04 14:49:44.508677+00
2160	Jinotega	JI	165	2019-09-04 14:49:44.521698+00
2161	León	LE	165	2019-09-04 14:49:44.532443+00
2162	Madriz	MD	165	2019-09-04 14:49:44.543809+00
2163	Managua	MN	165	2019-09-04 14:49:44.553442+00
2164	Masaya	MS	165	2019-09-04 14:49:44.56304+00
2165	Matagalpa	MT	165	2019-09-04 14:49:44.571878+00
2166	Nueva Segovia	NS	165	2019-09-04 14:49:44.581486+00
2167	Rivas	RI	165	2019-09-04 14:49:44.591568+00
2168	Río San Juan	SJ	165	2019-09-04 14:49:44.600861+00
2169	Aruba	AW	166	2019-09-04 14:49:44.61579+00
2170	Bonaire	BQ1	166	2019-09-04 14:49:44.625315+00
2171	Saba	BQ2	166	2019-09-04 14:49:44.634611+00
2172	Sint Eustatius	BQ3	166	2019-09-04 14:49:44.645027+00
2173	Curaçao	CW	166	2019-09-04 14:49:44.660013+00
2174	Drenthe	DR	166	2019-09-04 14:49:44.672235+00
2175	Flevoland	FL	166	2019-09-04 14:49:44.683828+00
2176	Friesland	FR	166	2019-09-04 14:49:44.693444+00
2177	Gelderland	GE	166	2019-09-04 14:49:44.703166+00
2178	Groningen	GR	166	2019-09-04 14:49:44.712513+00
2179	Limburg	LI	166	2019-09-04 14:49:44.727334+00
2180	Noord-Brabant	NB	166	2019-09-04 14:49:44.738056+00
2181	Noord-Holland	NH	166	2019-09-04 14:49:44.748459+00
2182	Overijssel	OV	166	2019-09-04 14:49:44.757267+00
2183	Sint Maarten	SX	166	2019-09-04 14:49:44.766201+00
2184	Utrecht	UT	166	2019-09-04 14:49:44.775018+00
2185	Zeeland	ZE	166	2019-09-04 14:49:44.784662+00
2186	Zuid-Holland	ZH	166	2019-09-04 14:49:44.793339+00
2187	Østfold	01	167	2019-09-04 14:49:44.810885+00
2188	Akershus	02	167	2019-09-04 14:49:44.820597+00
2189	Oslo	03	167	2019-09-04 14:49:44.830739+00
2190	Hedmark	04	167	2019-09-04 14:49:44.841038+00
2191	Oppland	05	167	2019-09-04 14:49:44.850365+00
2192	Buskerud	06	167	2019-09-04 14:49:44.859861+00
2193	Vestfold	07	167	2019-09-04 14:49:44.869156+00
2194	Telemark	08	167	2019-09-04 14:49:44.877795+00
2195	Aust-Agder	09	167	2019-09-04 14:49:44.886573+00
2196	Vest-Agder	10	167	2019-09-04 14:49:44.896997+00
2197	Rogaland	11	167	2019-09-04 14:49:44.907051+00
2198	Hordaland	12	167	2019-09-04 14:49:44.91903+00
2199	Sogn og Fjordane	14	167	2019-09-04 14:49:44.929808+00
2200	Møre og Romsdal	15	167	2019-09-04 14:49:44.938185+00
2201	Sør-Trøndelag	16	167	2019-09-04 14:49:44.949131+00
2202	Nord-Trøndelag	17	167	2019-09-04 14:49:44.958141+00
2203	Nordland	18	167	2019-09-04 14:49:44.967775+00
2204	Troms	19	167	2019-09-04 14:49:44.977261+00
2205	Finnmark	20	167	2019-09-04 14:49:44.986413+00
2206	Svalbard (Arctic Region)	21	167	2019-09-04 14:49:44.996618+00
2207	Jan Mayen (Arctic Region)	22	167	2019-09-04 14:49:45.006845+00
2208	Madhyamanchal	1	168	2019-09-04 14:49:45.023673+00
2209	Madhya Pashchimanchal	2	168	2019-09-04 14:49:45.035451+00
2210	Pashchimanchal	3	168	2019-09-04 14:49:45.046329+00
2211	Purwanchal	4	168	2019-09-04 14:49:45.055158+00
2212	Sudur Pashchimanchal	5	168	2019-09-04 14:49:45.064228+00
2213	Aiwo	01	169	2019-09-04 14:49:45.076994+00
2214	Anabar	02	169	2019-09-04 14:49:45.088219+00
2215	Anetan	03	169	2019-09-04 14:49:45.097125+00
2216	Anibare	04	169	2019-09-04 14:49:45.107653+00
2217	Baiti	05	169	2019-09-04 14:49:45.118656+00
2218	Boe	06	169	2019-09-04 14:49:45.128394+00
2219	Buada	07	169	2019-09-04 14:49:45.138258+00
2220	Denigomodu	08	169	2019-09-04 14:49:45.147551+00
2221	Ewa	09	169	2019-09-04 14:49:45.156604+00
2222	Ijuw	10	169	2019-09-04 14:49:45.165328+00
2223	Meneng	11	169	2019-09-04 14:49:45.174203+00
2224	Nibok	12	169	2019-09-04 14:49:45.183322+00
2225	Uaboe	13	169	2019-09-04 14:49:45.195565+00
2226	Yaren	14	169	2019-09-04 14:49:45.207359+00
2227	Chatham Islands Territory	CIT	171	2019-09-04 14:49:45.231109+00
2228	Auckland	AUK	171	2019-09-04 14:49:45.252866+00
2229	Bay of Plenty	BOP	171	2019-09-04 14:49:45.262834+00
2230	Canterbury	CAN	171	2019-09-04 14:49:45.272083+00
2231	Gisborne	GIS	171	2019-09-04 14:49:45.281668+00
2232	Hawke's Bay	HKB	171	2019-09-04 14:49:45.290933+00
2233	Manawatu-Wanganui	MWT	171	2019-09-04 14:49:45.300761+00
2234	Marlborough	MBH	171	2019-09-04 14:49:45.312629+00
2235	Nelson	NSN	171	2019-09-04 14:49:45.324708+00
2236	Northland	NTL	171	2019-09-04 14:49:45.3358+00
2237	Otago	OTA	171	2019-09-04 14:49:45.345551+00
2238	Southland	STL	171	2019-09-04 14:49:45.354131+00
2239	Taranaki	TKI	171	2019-09-04 14:49:45.363085+00
2240	Tasman	TAS	171	2019-09-04 14:49:45.372977+00
2241	Wellington	WGN	171	2019-09-04 14:49:45.382173+00
2242	Waikato	WKO	171	2019-09-04 14:49:45.392314+00
2243	West Coast	WTC	171	2019-09-04 14:49:45.402652+00
2244	Al Bāţinah	BA	172	2019-09-04 14:49:45.41529+00
2245	Al Buraymī	BU	172	2019-09-04 14:49:45.425413+00
2246	Ad Dākhilīya	DA	172	2019-09-04 14:49:45.434996+00
2247	Masqaţ	MA	172	2019-09-04 14:49:45.446644+00
2248	Musandam	MU	172	2019-09-04 14:49:45.459325+00
2249	Ash Sharqīyah	SH	172	2019-09-04 14:49:45.469785+00
2250	Al Wusţá	WU	172	2019-09-04 14:49:45.479798+00
2251	Az̧ Z̧āhirah	ZA	172	2019-09-04 14:49:45.489084+00
2252	Z̧ufār	ZU	172	2019-09-04 14:49:45.498302+00
2253	Bocas del Toro	1	173	2019-09-04 14:49:45.511169+00
2254	Coclé	2	173	2019-09-04 14:49:45.520463+00
2255	Colón	3	173	2019-09-04 14:49:45.528745+00
2256	Chiriquí	4	173	2019-09-04 14:49:45.537268+00
2257	Darién	5	173	2019-09-04 14:49:45.545727+00
2258	Herrera	6	173	2019-09-04 14:49:45.554246+00
2259	Los Santos	7	173	2019-09-04 14:49:45.564455+00
2260	Panamá	8	173	2019-09-04 14:49:45.575769+00
2261	Veraguas	9	173	2019-09-04 14:49:45.587886+00
2262	Emberá	EM	173	2019-09-04 14:49:45.601233+00
2263	Kuna Yala	KY	173	2019-09-04 14:49:45.613919+00
2264	Ngöbe-Buglé	NB	173	2019-09-04 14:49:45.623317+00
2265	Amazonas	AMA	174	2019-09-04 14:49:45.639719+00
2266	Ancash	ANC	174	2019-09-04 14:49:45.64918+00
2267	Apurímac	APU	174	2019-09-04 14:49:45.658109+00
2268	Arequipa	ARE	174	2019-09-04 14:49:45.666667+00
2269	Ayacucho	AYA	174	2019-09-04 14:49:45.676148+00
2270	Cajamarca	CAJ	174	2019-09-04 14:49:45.684644+00
2271	El Callao	CAL	174	2019-09-04 14:49:45.694497+00
2272	Cusco [Cuzco]	CUS	174	2019-09-04 14:49:45.705616+00
2273	Huánuco	HUC	174	2019-09-04 14:49:45.723791+00
2274	Huancavelica	HUV	174	2019-09-04 14:49:45.737146+00
2275	Ica	ICA	174	2019-09-04 14:49:45.748428+00
2276	Junín	JUN	174	2019-09-04 14:49:45.75807+00
2277	La Libertad	LAL	174	2019-09-04 14:49:45.766656+00
2278	Lambayeque	LAM	174	2019-09-04 14:49:45.775123+00
2279	Lima	LIM	174	2019-09-04 14:49:45.783248+00
2280	Municipalidad Metropolitana de Lima	LMA	174	2019-09-04 14:49:45.792242+00
2281	Loreto	LOR	174	2019-09-04 14:49:45.801115+00
2282	Madre de Dios	MDD	174	2019-09-04 14:49:45.809406+00
2283	Moquegua	MOQ	174	2019-09-04 14:49:45.817911+00
2284	Pasco	PAS	174	2019-09-04 14:49:45.83395+00
2285	Piura	PIU	174	2019-09-04 14:49:45.847467+00
2286	Puno	PUN	174	2019-09-04 14:49:45.858609+00
2287	San Martín	SAM	174	2019-09-04 14:49:45.86926+00
2288	Tacna	TAC	174	2019-09-04 14:49:45.885595+00
2289	Tumbes	TUM	174	2019-09-04 14:49:45.902433+00
2290	Ucayali	UCA	174	2019-09-04 14:49:45.913682+00
2291	Chimbu	CPK	176	2019-09-04 14:49:45.940735+00
2292	Central	CPM	176	2019-09-04 14:49:45.95117+00
2293	East New Britain	EBR	176	2019-09-04 14:49:45.959736+00
2294	Eastern Highlands	EHG	176	2019-09-04 14:49:45.96839+00
2295	Enga	EPW	176	2019-09-04 14:49:45.983643+00
2296	East Sepik	ESW	176	2019-09-04 14:49:45.993392+00
2297	Gulf	GPK	176	2019-09-04 14:49:46.005086+00
2298	Milne Bay	MBA	176	2019-09-04 14:49:46.025245+00
2299	Morobe	MPL	176	2019-09-04 14:49:46.036064+00
2300	Madang	MPM	176	2019-09-04 14:49:46.046505+00
2301	Manus	MRL	176	2019-09-04 14:49:46.059263+00
2302	National Capital District (Port Moresby)	NCD	176	2019-09-04 14:49:46.06911+00
2303	New Ireland	NIK	176	2019-09-04 14:49:46.079113+00
2304	Northern	NPP	176	2019-09-04 14:49:46.088668+00
2305	Bougainville	NSB	176	2019-09-04 14:49:46.101084+00
2306	Sandaun	SAN	176	2019-09-04 14:49:46.113067+00
2307	Southern Highlands	SHM	176	2019-09-04 14:49:46.133088+00
2308	West New Britain	WBK	176	2019-09-04 14:49:46.143733+00
2309	Western Highlands	WHM	176	2019-09-04 14:49:46.152522+00
2310	Western	WPD	176	2019-09-04 14:49:46.160768+00
2311	National Capital Region	00	177	2019-09-04 14:49:46.173534+00
2312	Ilocos (Region I)	01	177	2019-09-04 14:49:46.182994+00
2313	Cagayan Valley (Region II)	02	177	2019-09-04 14:49:46.193338+00
2314	Central Luzon (Region III)	03	177	2019-09-04 14:49:46.205233+00
2315	Bicol (Region V)	05	177	2019-09-04 14:49:46.21806+00
2316	Western Visayas (Region VI)	06	177	2019-09-04 14:49:46.235099+00
2317	Central Visayas (Region VII)	07	177	2019-09-04 14:49:46.245414+00
2318	Eastern Visayas (Region VIII)	08	177	2019-09-04 14:49:46.255211+00
2319	Zamboanga Peninsula (Region IX)	09	177	2019-09-04 14:49:46.26383+00
2320	Northern Mindanao (Region X)	10	177	2019-09-04 14:49:46.272222+00
2321	Davao (Region XI)	11	177	2019-09-04 14:49:46.280422+00
2322	Soccsksargen (Region XII)	12	177	2019-09-04 14:49:46.289123+00
2323	Caraga (Region XIII)	13	177	2019-09-04 14:49:46.298392+00
2324	Autonomous Region in Muslim Mindanao (ARMM)	14	177	2019-09-04 14:49:46.30996+00
2325	Cordillera Administrative Region (CAR)	15	177	2019-09-04 14:49:46.325704+00
2326	CALABARZON (Region IV-A)	40	177	2019-09-04 14:49:46.337707+00
2327	MIMAROPA (Region IV-B)	41	177	2019-09-04 14:49:46.347079+00
2328	Balochistan	BA	178	2019-09-04 14:49:46.359888+00
2329	Gilgit-Baltistan	GB	178	2019-09-04 14:49:46.369695+00
2330	Islamabad	IS	178	2019-09-04 14:49:46.378046+00
2331	Azad Kashmir	JK	178	2019-09-04 14:49:46.386166+00
2332	Khyber Pakhtunkhwa	KP	178	2019-09-04 14:49:46.3963+00
2333	Punjab	PB	178	2019-09-04 14:49:46.405459+00
2334	Sindh	SD	178	2019-09-04 14:49:46.414436+00
2335	Federally Administered Tribal Areas	TA	178	2019-09-04 14:49:46.42842+00
2336	Dolnośląskie	DS	179	2019-09-04 14:49:46.442066+00
2337	Kujawsko-pomorskie	KP	179	2019-09-04 14:49:46.451089+00
2338	Lubuskie	LB	179	2019-09-04 14:49:46.459294+00
2339	Łódzkie	LD	179	2019-09-04 14:49:46.467949+00
2340	Lubelskie	LU	179	2019-09-04 14:49:46.476657+00
2341	Małopolskie	MA	179	2019-09-04 14:49:46.485359+00
2342	Mazowieckie	MZ	179	2019-09-04 14:49:46.493795+00
2343	Opolskie	OP	179	2019-09-04 14:49:46.502718+00
2344	Podlaskie	PD	179	2019-09-04 14:49:46.51177+00
2345	Podkarpackie	PK	179	2019-09-04 14:49:46.532996+00
2346	Pomorskie	PM	179	2019-09-04 14:49:46.544454+00
2347	Świętokrzyskie	SK	179	2019-09-04 14:49:46.553599+00
2348	Śląskie	SL	179	2019-09-04 14:49:46.564117+00
2349	Warmińsko-mazurskie	WN	179	2019-09-04 14:49:46.574603+00
2350	Wielkopolskie	WP	179	2019-09-04 14:49:46.583381+00
2351	Zachodniopomorskie	ZP	179	2019-09-04 14:49:46.594951+00
2352	Bethlehem	BTH	183	2019-09-04 14:49:46.618263+00
2353	Deir El Balah	DEB	183	2019-09-04 14:49:46.632903+00
2354	Gaza	GZA	183	2019-09-04 14:49:46.641816+00
2355	Hebron	HBN	183	2019-09-04 14:49:46.651026+00
2356	Jerusalem	JEM	183	2019-09-04 14:49:46.659803+00
2357	Jenin	JEN	183	2019-09-04 14:49:46.668362+00
2358	Jericho - Al Aghwar	JRH	183	2019-09-04 14:49:46.67736+00
2359	Khan Yunis	KYS	183	2019-09-04 14:49:46.685957+00
2360	Nablus	NBS	183	2019-09-04 14:49:46.694813+00
2361	North Gaza	NGZ	183	2019-09-04 14:49:46.704251+00
2362	Qalqilya	QQA	183	2019-09-04 14:49:46.712593+00
2363	Ramallah	RBH	183	2019-09-04 14:49:46.72092+00
2364	Rafah	RFH	183	2019-09-04 14:49:46.730371+00
2365	Salfit	SLT	183	2019-09-04 14:49:46.739549+00
2366	Tubas	TBS	183	2019-09-04 14:49:46.75032+00
2367	Tulkarm	TKM	183	2019-09-04 14:49:46.758914+00
2368	Aveiro	01	184	2019-09-04 14:49:46.778852+00
2369	Beja	02	184	2019-09-04 14:49:46.78937+00
2370	Braga	03	184	2019-09-04 14:49:46.799565+00
2371	Bragança	04	184	2019-09-04 14:49:46.808474+00
2372	Castelo Branco	05	184	2019-09-04 14:49:46.81669+00
2373	Coimbra	06	184	2019-09-04 14:49:46.836719+00
2374	Évora	07	184	2019-09-04 14:49:46.84594+00
2375	Faro	08	184	2019-09-04 14:49:46.854998+00
2376	Guarda	09	184	2019-09-04 14:49:46.86401+00
2377	Leiria	10	184	2019-09-04 14:49:46.873196+00
2378	Lisboa	11	184	2019-09-04 14:49:46.881535+00
2379	Portalegre	12	184	2019-09-04 14:49:46.889913+00
2380	Porto	13	184	2019-09-04 14:49:46.90079+00
2381	Santarém	14	184	2019-09-04 14:49:46.91044+00
2382	Setúbal	15	184	2019-09-04 14:49:46.920235+00
2383	Viana do Castelo	16	184	2019-09-04 14:49:46.933601+00
2384	Vila Real	17	184	2019-09-04 14:49:46.942723+00
2385	Viseu	18	184	2019-09-04 14:49:46.954318+00
2386	Região Autónoma dos Açores	20	184	2019-09-04 14:49:46.963903+00
2387	Região Autónoma da Madeira	30	184	2019-09-04 14:49:46.97343+00
2388	Aimeliik	002	185	2019-09-04 14:49:46.986729+00
2389	Airai	004	185	2019-09-04 14:49:46.995303+00
2390	Angaur	010	185	2019-09-04 14:49:47.003709+00
2391	Hatobohei	050	185	2019-09-04 14:49:47.011772+00
2392	Kayangel	100	185	2019-09-04 14:49:47.02174+00
2393	Koror	150	185	2019-09-04 14:49:47.037183+00
2394	Melekeok	212	185	2019-09-04 14:49:47.045714+00
2395	Ngaraard	214	185	2019-09-04 14:49:47.055066+00
2396	Ngarchelong	218	185	2019-09-04 14:49:47.063791+00
2397	Ngardmau	222	185	2019-09-04 14:49:47.073053+00
2398	Ngatpang	224	185	2019-09-04 14:49:47.081571+00
2399	Ngchesar	226	185	2019-09-04 14:49:47.089719+00
2400	Ngeremlengui	227	185	2019-09-04 14:49:47.098104+00
2401	Ngiwal	228	185	2019-09-04 14:49:47.107298+00
2402	Peleliu	350	185	2019-09-04 14:49:47.116597+00
2403	Sonsorol	370	185	2019-09-04 14:49:47.131522+00
2404	Concepción	1	186	2019-09-04 14:49:47.144519+00
2405	Alto Paraná	10	186	2019-09-04 14:49:47.153634+00
2406	Central	11	186	2019-09-04 14:49:47.161938+00
2407	Ñeembucú	12	186	2019-09-04 14:49:47.171029+00
2408	Amambay	13	186	2019-09-04 14:49:47.180395+00
2409	Canindeyú	14	186	2019-09-04 14:49:47.190612+00
2410	Presidente Hayes	15	186	2019-09-04 14:49:47.202504+00
2411	Alto Paraguay	16	186	2019-09-04 14:49:47.212717+00
2412	Boquerón	19	186	2019-09-04 14:49:47.221626+00
2413	San Pedro	2	186	2019-09-04 14:49:47.235629+00
2414	Cordillera	3	186	2019-09-04 14:49:47.245056+00
2415	Guairá	4	186	2019-09-04 14:49:47.255342+00
2416	Caaguazú	5	186	2019-09-04 14:49:47.265589+00
2417	Caazapá	6	186	2019-09-04 14:49:47.274698+00
2418	Itapúa	7	186	2019-09-04 14:49:47.283294+00
2419	Misiones	8	186	2019-09-04 14:49:47.292055+00
2420	Paraguarí	9	186	2019-09-04 14:49:47.301294+00
2421	Asunción	ASU	186	2019-09-04 14:49:47.310328+00
2422	Ad Dawhah	DA	187	2019-09-04 14:49:47.329719+00
2423	Al Khawr wa adh Dhakhīrah	KH	187	2019-09-04 14:49:47.340783+00
2424	Ash Shamal	MS	187	2019-09-04 14:49:47.349843+00
2425	Ar Rayyan	RA	187	2019-09-04 14:49:47.359071+00
2426	Umm Salal	US	187	2019-09-04 14:49:47.368035+00
2427	Al Wakrah	WA	187	2019-09-04 14:49:47.377339+00
2428	Az̧ Z̧a‘āyin	ZA	187	2019-09-04 14:49:47.386004+00
2429	Alba	AB	189	2019-09-04 14:49:47.404849+00
2430	Argeș	AG	189	2019-09-04 14:49:47.415583+00
2431	Arad	AR	189	2019-09-04 14:49:47.424369+00
2432	București	B	189	2019-09-04 14:49:47.441071+00
2433	Bacău	BC	189	2019-09-04 14:49:47.453456+00
2434	Bihor	BH	189	2019-09-04 14:49:47.465239+00
2435	Bistrița-Năsăud	BN	189	2019-09-04 14:49:47.477494+00
2436	Brăila	BR	189	2019-09-04 14:49:47.491591+00
2437	Botoșani	BT	189	2019-09-04 14:49:47.501681+00
2438	Brașov	BV	189	2019-09-04 14:49:47.511155+00
2439	Buzău	BZ	189	2019-09-04 14:49:47.520546+00
2440	Cluj	CJ	189	2019-09-04 14:49:47.533385+00
2441	Călărași	CL	189	2019-09-04 14:49:47.542473+00
2442	Caraș-Severin	CS	189	2019-09-04 14:49:47.552459+00
2443	Constanța	CT	189	2019-09-04 14:49:47.561877+00
2444	Covasna	CV	189	2019-09-04 14:49:47.571428+00
2445	Dâmbovița	DB	189	2019-09-04 14:49:47.58062+00
2446	Dolj	DJ	189	2019-09-04 14:49:47.589713+00
2447	Gorj	GJ	189	2019-09-04 14:49:47.599078+00
2448	Galați	GL	189	2019-09-04 14:49:47.611569+00
2449	Giurgiu	GR	189	2019-09-04 14:49:47.623747+00
2450	Hunedoara	HD	189	2019-09-04 14:49:47.639559+00
2451	Harghita	HR	189	2019-09-04 14:49:47.648463+00
2452	Ilfov	IF	189	2019-09-04 14:49:47.657481+00
2453	Ialomița	IL	189	2019-09-04 14:49:47.665815+00
2454	Iași	IS	189	2019-09-04 14:49:47.674325+00
2455	Mehedinți	MH	189	2019-09-04 14:49:47.683577+00
2456	Maramureș	MM	189	2019-09-04 14:49:47.69268+00
2457	Mureș	MS	189	2019-09-04 14:49:47.701856+00
2458	Neamț	NT	189	2019-09-04 14:49:47.710608+00
2459	Olt	OT	189	2019-09-04 14:49:47.718941+00
2460	Prahova	PH	189	2019-09-04 14:49:47.727134+00
2461	Sibiu	SB	189	2019-09-04 14:49:47.738756+00
2462	Sălaj	SJ	189	2019-09-04 14:49:47.747975+00
2463	Satu Mare	SM	189	2019-09-04 14:49:47.758141+00
2464	Suceava	SV	189	2019-09-04 14:49:47.767144+00
2465	Tulcea	TL	189	2019-09-04 14:49:47.776+00
2466	Timiș	TM	189	2019-09-04 14:49:47.785438+00
2467	Teleorman	TR	189	2019-09-04 14:49:47.794543+00
2468	Vâlcea	VL	189	2019-09-04 14:49:47.80455+00
2469	Vrancea	VN	189	2019-09-04 14:49:47.81346+00
2470	Vaslui	VS	189	2019-09-04 14:49:47.824262+00
2471	Beograd	00	190	2019-09-04 14:49:47.838927+00
2472	Mačvanski okrug	08	190	2019-09-04 14:49:47.848224+00
2473	Kolubarski okrug	09	190	2019-09-04 14:49:47.858396+00
2474	Podunavski okrug	10	190	2019-09-04 14:49:47.867871+00
2475	Braničevski okrug	11	190	2019-09-04 14:49:47.877196+00
2476	Šumadijski okrug	12	190	2019-09-04 14:49:47.886101+00
2477	Pomoravski okrug	13	190	2019-09-04 14:49:47.896464+00
2478	Borski okrug	14	190	2019-09-04 14:49:47.905349+00
2479	Zaječarski okrug	15	190	2019-09-04 14:49:47.913876+00
2480	Zlatiborski okrug	16	190	2019-09-04 14:49:47.923497+00
2481	Moravički okrug	17	190	2019-09-04 14:49:47.934391+00
2482	Raški okrug	18	190	2019-09-04 14:49:47.94437+00
2483	Rasinski okrug	19	190	2019-09-04 14:49:47.956496+00
2484	Nišavski okrug	20	190	2019-09-04 14:49:47.968277+00
2485	Toplički okrug	21	190	2019-09-04 14:49:47.978298+00
2486	Pirotski okrug	22	190	2019-09-04 14:49:47.987536+00
2487	Jablanički okrug	23	190	2019-09-04 14:49:47.996784+00
2488	Pčinjski okrug	24	190	2019-09-04 14:49:48.00546+00
2489	Kosovo-Metohija	KM	190	2019-09-04 14:49:48.01449+00
2490	Vojvodina	VO	190	2019-09-04 14:49:48.024856+00
2491	Adygeya, Respublika	AD	191	2019-09-04 14:49:48.039165+00
2492	Altay, Respublika	AL	191	2019-09-04 14:49:48.049182+00
2493	Altayskiy kray	ALT	191	2019-09-04 14:49:48.058377+00
2494	Amurskaya oblast'	AMU	191	2019-09-04 14:49:48.066961+00
2495	Arkhangel'skaya oblast'	ARK	191	2019-09-04 14:49:48.078106+00
2496	Astrakhanskaya oblast'	AST	191	2019-09-04 14:49:48.098182+00
2497	Bashkortostan, Respublika	BA	191	2019-09-04 14:49:48.107172+00
2498	Belgorodskaya oblast'	BEL	191	2019-09-04 14:49:48.117098+00
2499	Bryanskaya oblast'	BRY	191	2019-09-04 14:49:48.127956+00
2500	Buryatiya, Respublika	BU	191	2019-09-04 14:49:48.13797+00
2501	Chechenskaya Respublika	CE	191	2019-09-04 14:49:48.147329+00
2502	Chelyabinskaya oblast'	CHE	191	2019-09-04 14:49:48.15612+00
2503	Chukotskiy avtonomnyy okrug	CHU	191	2019-09-04 14:49:48.164743+00
2504	Chuvashskaya Respublika	CU	191	2019-09-04 14:49:48.173794+00
2505	Dagestan, Respublika	DA	191	2019-09-04 14:49:48.183043+00
2506	Respublika Ingushetiya	IN	191	2019-09-04 14:49:48.191969+00
2507	Irkutiskaya oblast'	IRK	191	2019-09-04 14:49:48.200929+00
2508	Ivanovskaya oblast'	IVA	191	2019-09-04 14:49:48.209596+00
2509	Kamchatskiy kray	KAM	191	2019-09-04 14:49:48.21875+00
2510	Kabardino-Balkarskaya Respublika	KB	191	2019-09-04 14:49:48.230114+00
2511	Karachayevo-Cherkesskaya Respublika	KC	191	2019-09-04 14:49:48.238948+00
2512	Krasnodarskiy kray	KDA	191	2019-09-04 14:49:48.247302+00
2513	Kemerovskaya oblast'	KEM	191	2019-09-04 14:49:48.255214+00
2514	Kaliningradskaya oblast'	KGD	191	2019-09-04 14:49:48.264745+00
2515	Kurganskaya oblast'	KGN	191	2019-09-04 14:49:48.273037+00
2516	Khabarovskiy kray	KHA	191	2019-09-04 14:49:48.284609+00
2517	Khanty-Mansiysky avtonomnyy okrug-Yugra	KHM	191	2019-09-04 14:49:48.293411+00
2518	Kirovskaya oblast'	KIR	191	2019-09-04 14:49:48.303319+00
2519	Khakasiya, Respublika	KK	191	2019-09-04 14:49:48.312472+00
2520	Kalmykiya, Respublika	KL	191	2019-09-04 14:49:48.322406+00
2521	Kaluzhskaya oblast'	KLU	191	2019-09-04 14:49:48.331428+00
2522	Komi, Respublika	KO	191	2019-09-04 14:49:48.340311+00
2523	Kostromskaya oblast'	KOS	191	2019-09-04 14:49:48.349365+00
2524	Kareliya, Respublika	KR	191	2019-09-04 14:49:48.358626+00
2525	Kurskaya oblast'	KRS	191	2019-09-04 14:49:48.36728+00
2526	Krasnoyarskiy kray	KYA	191	2019-09-04 14:49:48.375892+00
2527	Leningradskaya oblast'	LEN	191	2019-09-04 14:49:48.38478+00
2528	Lipetskaya oblast'	LIP	191	2019-09-04 14:49:48.393744+00
2529	Magadanskaya oblast'	MAG	191	2019-09-04 14:49:48.403755+00
2530	Mariy El, Respublika	ME	191	2019-09-04 14:49:48.413193+00
2531	Mordoviya, Respublika	MO	191	2019-09-04 14:49:48.42194+00
2532	Moskovskaya oblast'	MOS	191	2019-09-04 14:49:48.433218+00
2533	Moskva	MOW	191	2019-09-04 14:49:48.442551+00
2534	Murmanskaya oblast'	MUR	191	2019-09-04 14:49:48.452206+00
2535	Nenetskiy avtonomnyy okrug	NEN	191	2019-09-04 14:49:48.461617+00
2536	Novgorodskaya oblast'	NGR	191	2019-09-04 14:49:48.471423+00
2537	Nizhegorodskaya oblast'	NIZ	191	2019-09-04 14:49:48.480521+00
2538	Novosibirskaya oblast'	NVS	191	2019-09-04 14:49:48.49035+00
2539	Omskaya oblast'	OMS	191	2019-09-04 14:49:48.499377+00
2540	Orenburgskaya oblast'	ORE	191	2019-09-04 14:49:48.508456+00
2541	Orlovskaya oblast'	ORL	191	2019-09-04 14:49:48.517872+00
2542	Permskiy kray	PER	191	2019-09-04 14:49:48.528134+00
2543	Penzenskaya oblast'	PNZ	191	2019-09-04 14:49:48.53699+00
2544	Primorskiy kray	PRI	191	2019-09-04 14:49:48.54599+00
2545	Pskovskaya oblast'	PSK	191	2019-09-04 14:49:48.555179+00
2546	Rostovskaya oblast'	ROS	191	2019-09-04 14:49:48.564943+00
2547	Ryazanskaya oblast'	RYA	191	2019-09-04 14:49:48.574106+00
2548	Sakha, Respublika [Yakutiya]	SA	191	2019-09-04 14:49:48.583223+00
2549	Sakhalinskaya oblast'	SAK	191	2019-09-04 14:49:48.593067+00
2550	Samaraskaya oblast'	SAM	191	2019-09-04 14:49:48.603944+00
2551	Saratovskaya oblast'	SAR	191	2019-09-04 14:49:48.6138+00
2552	Severnaya Osetiya-Alaniya, Respublika	SE	191	2019-09-04 14:49:48.624652+00
2553	Smolenskaya oblast'	SMO	191	2019-09-04 14:49:48.635157+00
2554	Sankt-Peterburg	SPE	191	2019-09-04 14:49:48.643803+00
2555	Stavropol'skiy kray	STA	191	2019-09-04 14:49:48.652079+00
2556	Sverdlovskaya oblast'	SVE	191	2019-09-04 14:49:48.661208+00
2557	Tatarstan, Respublika	TA	191	2019-09-04 14:49:48.669309+00
2558	Tambovskaya oblast'	TAM	191	2019-09-04 14:49:48.677254+00
2559	Tomskaya oblast'	TOM	191	2019-09-04 14:49:48.684569+00
2560	Tul'skaya oblast'	TUL	191	2019-09-04 14:49:48.692228+00
2561	Tverskaya oblast'	TVE	191	2019-09-04 14:49:48.700254+00
2562	Tyva, Respublika [Tuva]	TY	191	2019-09-04 14:49:48.708299+00
2563	Tyumenskaya oblast'	TYU	191	2019-09-04 14:49:48.719227+00
2564	Udmurtskaya Respublika	UD	191	2019-09-04 14:49:48.729465+00
2565	Ul'yanovskaya oblast'	ULY	191	2019-09-04 14:49:48.746187+00
2566	Volgogradskaya oblast'	VGG	191	2019-09-04 14:49:48.755728+00
2567	Vladimirskaya oblast'	VLA	191	2019-09-04 14:49:48.770055+00
2568	Vologodskaya oblast'	VLG	191	2019-09-04 14:49:48.780324+00
2569	Voronezhskaya oblast'	VOR	191	2019-09-04 14:49:48.789881+00
2570	Yamalo-Nenetskiy avtonomnyy okrug	YAN	191	2019-09-04 14:49:48.799279+00
2571	Yaroslavskaya oblast'	YAR	191	2019-09-04 14:49:48.808813+00
2572	Yevreyskaya avtonomnaya oblast'	YEV	191	2019-09-04 14:49:48.818329+00
2573	Zabajkal'skij kraj	ZAB	191	2019-09-04 14:49:48.82778+00
2574	Ville de Kigali	01	192	2019-09-04 14:49:48.841009+00
2575	Est	02	192	2019-09-04 14:49:48.853145+00
2576	Nord	03	192	2019-09-04 14:49:48.862195+00
2577	Ouest	04	192	2019-09-04 14:49:48.870899+00
2578	Sud	05	192	2019-09-04 14:49:48.879245+00
2579	Ar Riyāḍ	01	193	2019-09-04 14:49:48.89156+00
2580	Makkah	02	193	2019-09-04 14:49:48.90233+00
2581	Al Madīnah	03	193	2019-09-04 14:49:48.911966+00
2582	Ash Sharqīyah	04	193	2019-09-04 14:49:48.921442+00
2583	Al Qaşīm	05	193	2019-09-04 14:49:48.932368+00
2584	Ḥā'il	06	193	2019-09-04 14:49:48.941625+00
2585	Tabūk	07	193	2019-09-04 14:49:48.950775+00
2586	Al Ḥudūd ash Shamāliyah	08	193	2019-09-04 14:49:48.959877+00
2587	Jīzan	09	193	2019-09-04 14:49:48.968721+00
2588	Najrān	10	193	2019-09-04 14:49:48.977836+00
2589	Al Bāhah	11	193	2019-09-04 14:49:48.986846+00
2590	Al Jawf	12	193	2019-09-04 14:49:48.996048+00
2591	`Asīr	14	193	2019-09-04 14:49:49.004525+00
2592	Central	CE	194	2019-09-04 14:49:49.017069+00
2593	Choiseul	CH	194	2019-09-04 14:49:49.027246+00
2594	Capital Territory (Honiara)	CT	194	2019-09-04 14:49:49.035912+00
2595	Guadalcanal	GU	194	2019-09-04 14:49:49.045663+00
2596	Isabel	IS	194	2019-09-04 14:49:49.054354+00
2597	Makira	MK	194	2019-09-04 14:49:49.063405+00
2598	Malaita	ML	194	2019-09-04 14:49:49.072392+00
2599	Rennell and Bellona	RB	194	2019-09-04 14:49:49.082216+00
2600	Temotu	TE	194	2019-09-04 14:49:49.091587+00
2601	Western	WE	194	2019-09-04 14:49:49.10022+00
2602	Anse aux Pins	01	195	2019-09-04 14:49:49.113204+00
2603	Anse Boileau	02	195	2019-09-04 14:49:49.122073+00
2604	Anse Etoile	03	195	2019-09-04 14:49:49.131194+00
2605	Anse Louis	04	195	2019-09-04 14:49:49.140607+00
2606	Anse Royale	05	195	2019-09-04 14:49:49.149803+00
2607	Baie Lazare	06	195	2019-09-04 14:49:49.160243+00
2608	Baie Sainte Anne	07	195	2019-09-04 14:49:49.16919+00
2609	Beau Vallon	08	195	2019-09-04 14:49:49.178353+00
2610	Bel Air	09	195	2019-09-04 14:49:49.187304+00
2611	Bel Ombre	10	195	2019-09-04 14:49:49.196546+00
2612	Cascade	11	195	2019-09-04 14:49:49.206163+00
2613	Glacis	12	195	2019-09-04 14:49:49.215564+00
2614	Grand Anse Mahe	13	195	2019-09-04 14:49:49.224767+00
2615	Grand Anse Praslin	14	195	2019-09-04 14:49:49.234024+00
2616	La Digue	15	195	2019-09-04 14:49:49.243216+00
2617	English River	16	195	2019-09-04 14:49:49.252403+00
2618	Mont Buxton	17	195	2019-09-04 14:49:49.263991+00
2619	Mont Fleuri	18	195	2019-09-04 14:49:49.273171+00
2620	Plaisance	19	195	2019-09-04 14:49:49.282617+00
2621	Pointe Larue	20	195	2019-09-04 14:49:49.291587+00
2622	Port Glaud	21	195	2019-09-04 14:49:49.300642+00
2623	Saint Louis	22	195	2019-09-04 14:49:49.309546+00
2624	Takamaka	23	195	2019-09-04 14:49:49.318649+00
2625	Les Mamelles	24	195	2019-09-04 14:49:49.327559+00
2626	Roche Caiman	25	195	2019-09-04 14:49:49.33597+00
2627	Zalingei	DC	196	2019-09-04 14:49:49.354616+00
2628	Sharq Dārfūr	DE	196	2019-09-04 14:49:49.36426+00
2629	Shamāl Dārfūr	DN	196	2019-09-04 14:49:49.373929+00
2630	Janūb Dārfūr	DS	196	2019-09-04 14:49:49.383163+00
2631	Gharb Dārfūr	DW	196	2019-09-04 14:49:49.392732+00
2632	Al Qaḑārif	GD	196	2019-09-04 14:49:49.401974+00
2633	Al Jazīrah	GZ	196	2019-09-04 14:49:49.413022+00
2634	Kassalā	KA	196	2019-09-04 14:49:49.422492+00
2635	Al Kharţūm	KH	196	2019-09-04 14:49:49.43159+00
2636	Shamāl Kurdufān	KN	196	2019-09-04 14:49:49.440979+00
2637	Janūb Kurdufān	KS	196	2019-09-04 14:49:49.451786+00
2638	An Nīl al Azraq	NB	196	2019-09-04 14:49:49.461245+00
2639	Ash Shamālīyah	NO	196	2019-09-04 14:49:49.470582+00
2640	An Nīl	NR	196	2019-09-04 14:49:49.481239+00
2641	An Nīl al Abyaḑ	NW	196	2019-09-04 14:49:49.490111+00
2642	Al Baḩr al Aḩmar	RS	196	2019-09-04 14:49:49.499082+00
2643	Sinnār	SI	196	2019-09-04 14:49:49.508185+00
2644	Stockholms län	AB	197	2019-09-04 14:49:49.52125+00
2645	Västerbottens län	AC	197	2019-09-04 14:49:49.531669+00
2646	Norrbottens län	BD	197	2019-09-04 14:49:49.53994+00
2647	Uppsala län	C	197	2019-09-04 14:49:49.549484+00
2648	Södermanlands län	D	197	2019-09-04 14:49:49.558478+00
2649	Östergötlands län	E	197	2019-09-04 14:49:49.567188+00
2650	Jönköpings län	F	197	2019-09-04 14:49:49.57595+00
2651	Kronobergs län	G	197	2019-09-04 14:49:49.584964+00
2652	Kalmar län	H	197	2019-09-04 14:49:49.594224+00
2653	Gotlands län	I	197	2019-09-04 14:49:49.603602+00
2654	Blekinge län	K	197	2019-09-04 14:49:49.611707+00
2655	Skåne län	M	197	2019-09-04 14:49:49.621499+00
2656	Hallands län	N	197	2019-09-04 14:49:49.630644+00
2657	Västra Götalands län	O	197	2019-09-04 14:49:49.639845+00
2658	Värmlands län	S	197	2019-09-04 14:49:49.649032+00
2659	Örebro län	T	197	2019-09-04 14:49:49.657686+00
2660	Västmanlands län	U	197	2019-09-04 14:49:49.6666+00
2661	Dalarnas län	W	197	2019-09-04 14:49:49.675064+00
2662	Gävleborgs län	X	197	2019-09-04 14:49:49.684757+00
2663	Västernorrlands län	Y	197	2019-09-04 14:49:49.699269+00
2664	Jämtlands län	Z	197	2019-09-04 14:49:49.708762+00
2665	Central Singapore	01	198	2019-09-04 14:49:49.721606+00
2666	North East	02	198	2019-09-04 14:49:49.731069+00
2667	North West	03	198	2019-09-04 14:49:49.740207+00
2668	South East	04	198	2019-09-04 14:49:49.74883+00
2669	South West	05	198	2019-09-04 14:49:49.758284+00
2670	Ascension	AC	199	2019-09-04 14:49:49.770467+00
2671	Saint Helena	HL	199	2019-09-04 14:49:49.779791+00
2672	Tristan da Cunha	TA	199	2019-09-04 14:49:49.788958+00
2673	Ajdovščina	001	200	2019-09-04 14:49:49.802708+00
2674	Beltinci	002	200	2019-09-04 14:49:49.812128+00
2675	Bled	003	200	2019-09-04 14:49:49.820719+00
2676	Bohinj	004	200	2019-09-04 14:49:49.829914+00
2677	Borovnica	005	200	2019-09-04 14:49:49.838542+00
2678	Bovec	006	200	2019-09-04 14:49:49.847424+00
2679	Brda	007	200	2019-09-04 14:49:49.857177+00
2680	Brezovica	008	200	2019-09-04 14:49:49.865454+00
2681	Brežice	009	200	2019-09-04 14:49:49.874152+00
2682	Tišina	010	200	2019-09-04 14:49:49.88279+00
2683	Celje	011	200	2019-09-04 14:49:49.892618+00
2684	Cerklje na Gorenjskem	012	200	2019-09-04 14:49:49.904791+00
2685	Cerknica	013	200	2019-09-04 14:49:49.914588+00
2686	Cerkno	014	200	2019-09-04 14:49:49.923657+00
2687	Črenšovci	015	200	2019-09-04 14:49:49.937976+00
2688	Črna na Koroškem	016	200	2019-09-04 14:49:49.947081+00
2689	Črnomelj	017	200	2019-09-04 14:49:49.956152+00
2690	Destrnik	018	200	2019-09-04 14:49:49.965291+00
2691	Divača	019	200	2019-09-04 14:49:49.974313+00
2692	Dobrepolje	020	200	2019-09-04 14:49:49.98279+00
2693	Dobrova-Polhov Gradec	021	200	2019-09-04 14:49:49.991825+00
2694	Dol pri Ljubljani	022	200	2019-09-04 14:49:50.001006+00
2695	Domžale	023	200	2019-09-04 14:49:50.010213+00
2696	Dornava	024	200	2019-09-04 14:49:50.019279+00
2697	Dravograd	025	200	2019-09-04 14:49:50.029567+00
2698	Duplek	026	200	2019-09-04 14:49:50.038704+00
2699	Gorenja vas-Poljane	027	200	2019-09-04 14:49:50.047639+00
2700	Gorišnica	028	200	2019-09-04 14:49:50.055839+00
2701	Gornja Radgona	029	200	2019-09-04 14:49:50.064627+00
2702	Gornji Grad	030	200	2019-09-04 14:49:50.07275+00
2703	Gornji Petrovci	031	200	2019-09-04 14:49:50.084475+00
2704	Grosuplje	032	200	2019-09-04 14:49:50.093504+00
2705	Šalovci	033	200	2019-09-04 14:49:50.101808+00
2706	Hrastnik	034	200	2019-09-04 14:49:50.110799+00
2707	Hrpelje-Kozina	035	200	2019-09-04 14:49:50.120049+00
2708	Idrija	036	200	2019-09-04 14:49:50.129082+00
2709	Ig	037	200	2019-09-04 14:49:50.138168+00
2710	Ilirska Bistrica	038	200	2019-09-04 14:49:50.147373+00
2711	Ivančna Gorica	039	200	2019-09-04 14:49:50.157573+00
2712	Izola/Isola	040	200	2019-09-04 14:49:50.167829+00
2713	Jesenice	041	200	2019-09-04 14:49:50.176769+00
2714	Juršinci	042	200	2019-09-04 14:49:50.18581+00
2715	Kamnik	043	200	2019-09-04 14:49:50.195098+00
2716	Kanal	044	200	2019-09-04 14:49:50.205924+00
2717	Kidričevo	045	200	2019-09-04 14:49:50.247408+00
2718	Kobarid	046	200	2019-09-04 14:49:50.258736+00
2719	Kobilje	047	200	2019-09-04 14:49:50.269181+00
2720	Kočevje	048	200	2019-09-04 14:49:50.278639+00
2721	Komen	049	200	2019-09-04 14:49:50.287627+00
2722	Koper/Capodistria	050	200	2019-09-04 14:49:50.296719+00
2723	Kozje	051	200	2019-09-04 14:49:50.305911+00
2724	Kranj	052	200	2019-09-04 14:49:50.315093+00
2725	Kranjska Gora	053	200	2019-09-04 14:49:50.323937+00
2726	Krško	054	200	2019-09-04 14:49:50.332947+00
2727	Kungota	055	200	2019-09-04 14:49:50.341776+00
2728	Kuzma	056	200	2019-09-04 14:49:50.350333+00
2729	Laško	057	200	2019-09-04 14:49:50.358355+00
2730	Lenart	058	200	2019-09-04 14:49:50.368969+00
2731	Lendava/Lendva	059	200	2019-09-04 14:49:50.378988+00
2732	Litija	060	200	2019-09-04 14:49:50.38968+00
2733	Ljubljana	061	200	2019-09-04 14:49:50.400417+00
2734	Ljubno	062	200	2019-09-04 14:49:50.409414+00
2735	Ljutomer	063	200	2019-09-04 14:49:50.418454+00
2736	Logatec	064	200	2019-09-04 14:49:50.427359+00
2737	Loška dolina	065	200	2019-09-04 14:49:50.437119+00
2738	Loški Potok	066	200	2019-09-04 14:49:50.446276+00
2739	Luče	067	200	2019-09-04 14:49:50.455265+00
2740	Lukovica	068	200	2019-09-04 14:49:50.464959+00
2741	Majšperk	069	200	2019-09-04 14:49:50.473614+00
2742	Maribor	070	200	2019-09-04 14:49:50.482999+00
2743	Medvode	071	200	2019-09-04 14:49:50.492042+00
2744	Mengeš	072	200	2019-09-04 14:49:50.501018+00
2745	Metlika	073	200	2019-09-04 14:49:50.510349+00
2746	Mežica	074	200	2019-09-04 14:49:50.519419+00
2747	Miren-Kostanjevica	075	200	2019-09-04 14:49:50.528257+00
2748	Mislinja	076	200	2019-09-04 14:49:50.536725+00
2749	Moravče	077	200	2019-09-04 14:49:50.547028+00
2750	Moravske Toplice	078	200	2019-09-04 14:49:50.555545+00
2751	Mozirje	079	200	2019-09-04 14:49:50.564174+00
2752	Murska Sobota	080	200	2019-09-04 14:49:50.573892+00
2753	Muta	081	200	2019-09-04 14:49:50.583297+00
2754	Naklo	082	200	2019-09-04 14:49:50.59695+00
2755	Nazarje	083	200	2019-09-04 14:49:50.606805+00
2756	Nova Gorica	084	200	2019-09-04 14:49:50.61653+00
2757	Novo mesto	085	200	2019-09-04 14:49:50.62573+00
2758	Odranci	086	200	2019-09-04 14:49:50.641351+00
2759	Ormož	087	200	2019-09-04 14:49:50.652337+00
2760	Osilnica	088	200	2019-09-04 14:49:50.662371+00
2761	Pesnica	089	200	2019-09-04 14:49:50.671916+00
2762	Piran/Pirano	090	200	2019-09-04 14:49:50.682268+00
2763	Pivka	091	200	2019-09-04 14:49:50.691303+00
2764	Podčetrtek	092	200	2019-09-04 14:49:50.700192+00
2765	Podvelka	093	200	2019-09-04 14:49:50.709137+00
2766	Postojna	094	200	2019-09-04 14:49:50.717955+00
2767	Preddvor	095	200	2019-09-04 14:49:50.726877+00
2768	Ptuj	096	200	2019-09-04 14:49:50.737513+00
2769	Puconci	097	200	2019-09-04 14:49:50.746233+00
2770	Rače-Fram	098	200	2019-09-04 14:49:50.755658+00
2771	Radeče	099	200	2019-09-04 14:49:50.765077+00
2772	Radenci	100	200	2019-09-04 14:49:50.774046+00
2773	Radlje ob Dravi	101	200	2019-09-04 14:49:50.783413+00
2774	Radovljica	102	200	2019-09-04 14:49:50.793199+00
2775	Ravne na Koroškem	103	200	2019-09-04 14:49:50.807713+00
2776	Ribnica	104	200	2019-09-04 14:49:50.817674+00
2777	Rogašovci	105	200	2019-09-04 14:49:50.832809+00
2778	Rogaška Slatina	106	200	2019-09-04 14:49:50.841996+00
2779	Rogatec	107	200	2019-09-04 14:49:50.851236+00
2780	Ruše	108	200	2019-09-04 14:49:50.861205+00
2781	Semič	109	200	2019-09-04 14:49:50.872606+00
2782	Sevnica	110	200	2019-09-04 14:49:50.882274+00
2783	Sežana	111	200	2019-09-04 14:49:50.891416+00
2784	Slovenj Gradec	112	200	2019-09-04 14:49:50.901663+00
2785	Slovenska Bistrica	113	200	2019-09-04 14:49:50.910728+00
2786	Slovenske Konjice	114	200	2019-09-04 14:49:50.919934+00
2787	Starče	115	200	2019-09-04 14:49:50.928939+00
2788	Sveti Jurij	116	200	2019-09-04 14:49:50.938374+00
2789	Šenčur	117	200	2019-09-04 14:49:50.947819+00
2790	Šentilj	118	200	2019-09-04 14:49:50.958089+00
2791	Šentjernej	119	200	2019-09-04 14:49:50.968499+00
2792	Šentjur	120	200	2019-09-04 14:49:50.977834+00
2793	Škocjan	121	200	2019-09-04 14:49:50.987317+00
2794	Škofja Loka	122	200	2019-09-04 14:49:50.99901+00
2795	Škofljica	123	200	2019-09-04 14:49:51.007793+00
2796	Šmarje pri Jelšah	124	200	2019-09-04 14:49:51.016524+00
2797	Šmartno ob Paki	125	200	2019-09-04 14:49:51.026518+00
2798	Šoštanj	126	200	2019-09-04 14:49:51.036608+00
2799	Štore	127	200	2019-09-04 14:49:51.045447+00
2800	Tolmin	128	200	2019-09-04 14:49:51.053999+00
2801	Trbovlje	129	200	2019-09-04 14:49:51.063223+00
2802	Trebnje	130	200	2019-09-04 14:49:51.071644+00
2803	Tržič	131	200	2019-09-04 14:49:51.080764+00
2804	Turnišče	132	200	2019-09-04 14:49:51.08964+00
2805	Velenje	133	200	2019-09-04 14:49:51.100112+00
2806	Velike Lašče	134	200	2019-09-04 14:49:51.110633+00
2807	Videm	135	200	2019-09-04 14:49:51.119632+00
2808	Vipava	136	200	2019-09-04 14:49:51.129231+00
2809	Vitanje	137	200	2019-09-04 14:49:51.13879+00
2810	Vodice	138	200	2019-09-04 14:49:51.14804+00
2811	Vojnik	139	200	2019-09-04 14:49:51.157174+00
2812	Vrhnika	140	200	2019-09-04 14:49:51.166982+00
2813	Vuzenica	141	200	2019-09-04 14:49:51.176041+00
2814	Zagorje ob Savi	142	200	2019-09-04 14:49:51.184462+00
2815	Zavrč	143	200	2019-09-04 14:49:51.193318+00
2816	Zreče	144	200	2019-09-04 14:49:51.205109+00
2817	Železniki	146	200	2019-09-04 14:49:51.214138+00
2818	Žiri	147	200	2019-09-04 14:49:51.223416+00
2819	Benedikt	148	200	2019-09-04 14:49:51.232438+00
2820	Bistrica ob Sotli	149	200	2019-09-04 14:49:51.241786+00
2821	Bloke	150	200	2019-09-04 14:49:51.255897+00
2822	Braslovče	151	200	2019-09-04 14:49:51.265231+00
2823	Cankova	152	200	2019-09-04 14:49:51.275816+00
2824	Cerkvenjak	153	200	2019-09-04 14:49:51.286659+00
2825	Dobje	154	200	2019-09-04 14:49:51.296115+00
2826	Dobrna	155	200	2019-09-04 14:49:51.305617+00
2827	Dobrovnik/Dobronak	156	200	2019-09-04 14:49:51.31514+00
2828	Dolenjske Toplice	157	200	2019-09-04 14:49:51.325658+00
2829	Grad	158	200	2019-09-04 14:49:51.335233+00
2830	Hajdina	159	200	2019-09-04 14:49:51.344387+00
2831	Hoče-Slivnica	160	200	2019-09-04 14:49:51.353259+00
2832	Hodoš/Hodos	161	200	2019-09-04 14:49:51.362479+00
2833	Horjul	162	200	2019-09-04 14:49:51.373262+00
2834	Jezersko	163	200	2019-09-04 14:49:51.382524+00
2835	Komenda	164	200	2019-09-04 14:49:51.391865+00
2836	Kostel	165	200	2019-09-04 14:49:51.402032+00
2837	Križevci	166	200	2019-09-04 14:49:51.411376+00
2838	Lovrenc na Pohorju	167	200	2019-09-04 14:49:51.420829+00
2839	Markovci	168	200	2019-09-04 14:49:51.429791+00
2840	Miklavž na Dravskem polju	169	200	2019-09-04 14:49:51.439697+00
2841	Mirna Peč	170	200	2019-09-04 14:49:51.449938+00
2842	Oplotnica	171	200	2019-09-04 14:49:51.459212+00
2843	Podlehnik	172	200	2019-09-04 14:49:51.470199+00
2844	Polzela	173	200	2019-09-04 14:49:51.479277+00
2845	Prebold	174	200	2019-09-04 14:49:51.48868+00
2846	Prevalje	175	200	2019-09-04 14:49:51.497961+00
2847	Razkrižje	176	200	2019-09-04 14:49:51.506948+00
2848	Ribnica na Pohorju	177	200	2019-09-04 14:49:51.515157+00
2849	Selnica ob Dravi	178	200	2019-09-04 14:49:51.524332+00
2850	Sodražica	179	200	2019-09-04 14:49:51.535196+00
2851	Solčava	180	200	2019-09-04 14:49:51.549875+00
2852	Sveta Ana	181	200	2019-09-04 14:49:51.560048+00
2853	Sveta Andraž v Slovenskih Goricah	182	200	2019-09-04 14:49:51.569533+00
2854	Šempeter-Vrtojba	183	200	2019-09-04 14:49:51.5499+00
2855	Tabor	184	200	2019-09-04 14:49:51.563925+00
2856	Trnovska vas	185	200	2019-09-04 14:49:51.573314+00
2857	Trzin	186	200	2019-09-04 14:49:51.582106+00
2858	Velika Polana	187	200	2019-09-04 14:49:51.599327+00
2859	Veržej	188	200	2019-09-04 14:49:51.616642+00
2860	Vransko	189	200	2019-09-04 14:49:51.625903+00
2861	Žalec	190	200	2019-09-04 14:49:51.634874+00
2862	Žetale	191	200	2019-09-04 14:49:51.645521+00
2863	Žirovnica	192	200	2019-09-04 14:49:51.657271+00
2864	Žužemberk	193	200	2019-09-04 14:49:51.666872+00
2865	Šmartno pri Litiji	194	200	2019-09-04 14:49:51.676035+00
2866	Apače	195	200	2019-09-04 14:49:51.68538+00
2867	Cirkulane	196	200	2019-09-04 14:49:51.694776+00
2868	Kosanjevica na Krki	197	200	2019-09-04 14:49:51.704107+00
2869	Makole	198	200	2019-09-04 14:49:51.713184+00
2870	Mokronog-Trebelno	199	200	2019-09-04 14:49:51.721805+00
2871	Poljčane	200	200	2019-09-04 14:49:51.730999+00
2872	Renče-Vogrsko	201	200	2019-09-04 14:49:51.740118+00
2873	Središče ob Dravi	202	200	2019-09-04 14:49:51.749721+00
2874	Straža	203	200	2019-09-04 14:49:51.759124+00
2875	Sveta Trojica v Slovenskih Goricah	204	200	2019-09-04 14:49:51.768868+00
2876	Sveti Tomaž	205	200	2019-09-04 14:49:51.778659+00
2877	Šmarjeske Topliče	206	200	2019-09-04 14:49:51.789385+00
2878	Gorje	207	200	2019-09-04 14:49:51.798899+00
2879	Log-Dragomer	208	200	2019-09-04 14:49:51.808257+00
2880	Rečica ob Savinji	209	200	2019-09-04 14:49:51.817055+00
2881	Sveti Jurij v Slovenskih Goricah	210	200	2019-09-04 14:49:51.827106+00
2882	Šentrupert	211	200	2019-09-04 14:49:51.836299+00
2883	Banskobystrický kraj	BC	202	2019-09-04 14:49:51.850618+00
2884	Bratislavský kraj	BL	202	2019-09-04 14:49:51.865936+00
2885	Košický kraj	KI	202	2019-09-04 14:49:51.876126+00
2886	Nitriansky kraj	NI	202	2019-09-04 14:49:51.886314+00
2887	Prešovský kraj	PV	202	2019-09-04 14:49:51.896697+00
2888	Trnavský kraj	TA	202	2019-09-04 14:49:51.90627+00
2889	Trenčiansky kraj	TC	202	2019-09-04 14:49:51.915137+00
2890	Žilinský kraj	ZI	202	2019-09-04 14:49:51.925593+00
2891	Eastern	E	203	2019-09-04 14:49:51.939451+00
2892	Northern	N	203	2019-09-04 14:49:51.948986+00
2893	Southern (Sierra Leone)	S	203	2019-09-04 14:49:51.958555+00
2894	Western Area (Freetown)	W	203	2019-09-04 14:49:51.967864+00
2895	Acquaviva	01	204	2019-09-04 14:49:51.981374+00
2896	Chiesanuova	02	204	2019-09-04 14:49:51.990995+00
2897	Domagnano	03	204	2019-09-04 14:49:52.003496+00
2898	Faetano	04	204	2019-09-04 14:49:52.012857+00
2899	Fiorentino	05	204	2019-09-04 14:49:52.021789+00
2900	Borgo Maggiore	06	204	2019-09-04 14:49:52.031681+00
2901	San Marino	07	204	2019-09-04 14:49:52.041567+00
2902	Montegiardino	08	204	2019-09-04 14:49:52.051098+00
2903	Serravalle	09	204	2019-09-04 14:49:52.059953+00
2904	Diourbel	DB	205	2019-09-04 14:49:52.074691+00
2905	Dakar	DK	205	2019-09-04 14:49:52.084336+00
2906	Fatick	FK	205	2019-09-04 14:49:52.093218+00
2907	Kaffrine	KA	205	2019-09-04 14:49:52.102175+00
2908	Kolda	KD	205	2019-09-04 14:49:52.110547+00
2909	Kédougou	KE	205	2019-09-04 14:49:52.11983+00
2910	Kaolack	KL	205	2019-09-04 14:49:52.129734+00
2911	Louga	LG	205	2019-09-04 14:49:52.138899+00
2912	Matam	MT	205	2019-09-04 14:49:52.148463+00
2913	Sédhiou	SE	205	2019-09-04 14:49:52.158906+00
2914	Saint-Louis	SL	205	2019-09-04 14:49:52.170824+00
2915	Tambacounda	TC	205	2019-09-04 14:49:52.180148+00
2916	Thiès	TH	205	2019-09-04 14:49:52.18944+00
2917	Ziguinchor	ZG	205	2019-09-04 14:49:52.198884+00
2918	Awdal	AW	206	2019-09-04 14:49:52.213147+00
2919	Bakool	BK	206	2019-09-04 14:49:52.223111+00
2920	Banaadir	BN	206	2019-09-04 14:49:52.232146+00
2921	Bari	BR	206	2019-09-04 14:49:52.241596+00
2922	Bay	BY	206	2019-09-04 14:49:52.250978+00
2923	Galguduud	GA	206	2019-09-04 14:49:52.260211+00
2924	Gedo	GE	206	2019-09-04 14:49:52.270194+00
2925	Hiirsan	HI	206	2019-09-04 14:49:52.279213+00
2926	Jubbada Dhexe	JD	206	2019-09-04 14:49:52.288745+00
2927	Jubbada Hoose	JH	206	2019-09-04 14:49:52.298446+00
2928	Mudug	MU	206	2019-09-04 14:49:52.307973+00
2929	Nugaal	NU	206	2019-09-04 14:49:52.31721+00
2930	Saneag	SA	206	2019-09-04 14:49:52.326459+00
2931	Shabeellaha Dhexe	SD	206	2019-09-04 14:49:52.336619+00
2932	Shabeellaha Hoose	SH	206	2019-09-04 14:49:52.345665+00
2933	Sool	SO	206	2019-09-04 14:49:52.355405+00
2934	Togdheer	TO	206	2019-09-04 14:49:52.365766+00
2935	Woqooyi Galbeed	WO	206	2019-09-04 14:49:52.375858+00
2936	Brokopondo	BR	207	2019-09-04 14:49:52.389409+00
2937	Commewijne	CM	207	2019-09-04 14:49:52.398698+00
2938	Coronie	CR	207	2019-09-04 14:49:52.41252+00
2939	Marowijne	MA	207	2019-09-04 14:49:52.422059+00
2940	Nickerie	NI	207	2019-09-04 14:49:52.431442+00
2941	Paramaribo	PM	207	2019-09-04 14:49:52.441077+00
2942	Para	PR	207	2019-09-04 14:49:52.45032+00
2943	Saramacca	SA	207	2019-09-04 14:49:52.459376+00
2944	Sipaliwini	SI	207	2019-09-04 14:49:52.468314+00
2945	Wanica	WA	207	2019-09-04 14:49:52.477166+00
2946	Northern Bahr el-Ghazal	BN	208	2019-09-04 14:49:52.490409+00
2947	Western Bahr el-Ghazal	BW	208	2019-09-04 14:49:52.500536+00
2948	Central Equatoria	EC	208	2019-09-04 14:49:52.510775+00
2949	Eastern Equatoria	EE8	208	2019-09-04 14:49:52.518762+00
2950	Western Equatoria	EW	208	2019-09-04 14:49:52.527531+00
2951	Jonglei	JG	208	2019-09-04 14:49:52.536307+00
2952	Lakes	LK	208	2019-09-04 14:49:52.54622+00
2953	Upper Nile	NU	208	2019-09-04 14:49:52.555505+00
2954	Unity	UY	208	2019-09-04 14:49:52.564729+00
2955	Warrap	WR	208	2019-09-04 14:49:52.57366+00
2956	Príncipe	P	209	2019-09-04 14:49:52.587074+00
2957	São Tomé	S	209	2019-09-04 14:49:52.596064+00
2958	Ahuachapán	AH	210	2019-09-04 14:49:52.60925+00
2959	Cabañas	CA	210	2019-09-04 14:49:52.620716+00
2960	Chalatenango	CH	210	2019-09-04 14:49:52.630181+00
2961	Cuscatlán	CU	210	2019-09-04 14:49:52.640162+00
2962	La Libertad	LI	210	2019-09-04 14:49:52.650228+00
2963	Morazán	MO	210	2019-09-04 14:49:52.659285+00
2964	La Paz	PA	210	2019-09-04 14:49:52.668216+00
2965	Santa Ana	SA	210	2019-09-04 14:49:52.678982+00
2966	San Miguel	SM	210	2019-09-04 14:49:52.687794+00
2967	Sonsonate	SO	210	2019-09-04 14:49:52.696805+00
2968	San Salvador	SS	210	2019-09-04 14:49:52.705927+00
2969	San Vicente	SV	210	2019-09-04 14:49:52.715136+00
2970	La Unión	UN	210	2019-09-04 14:49:52.724322+00
2971	Usulután	US	210	2019-09-04 14:49:52.733592+00
2972	Dimashq	DI	212	2019-09-04 14:49:52.747997+00
2973	Dar'a	DR	212	2019-09-04 14:49:52.757164+00
2974	Dayr az Zawr	DY	212	2019-09-04 14:49:52.766521+00
2975	Al Hasakah	HA	212	2019-09-04 14:49:52.775622+00
2976	Homs	HI	212	2019-09-04 14:49:52.784324+00
2977	Halab	HL	212	2019-09-04 14:49:52.793476+00
2978	Hamah	HM	212	2019-09-04 14:49:52.802227+00
2979	Idlib	ID	212	2019-09-04 14:49:52.81098+00
2980	Al Ladhiqiyah	LA	212	2019-09-04 14:49:52.820229+00
2981	Al Qunaytirah	QU	212	2019-09-04 14:49:52.830135+00
2982	Ar Raqqah	RA	212	2019-09-04 14:49:52.839485+00
2983	Rif Dimashq	RD	212	2019-09-04 14:49:52.850364+00
2984	As Suwayda'	SU	212	2019-09-04 14:49:52.858918+00
2985	Tartus	TA	212	2019-09-04 14:49:52.868991+00
2986	Hhohho	HH	213	2019-09-04 14:49:52.883298+00
2987	Lubombo	LU	213	2019-09-04 14:49:52.893202+00
2988	Manzini	MA	213	2019-09-04 14:49:52.902066+00
2989	Shiselweni	SH	213	2019-09-04 14:49:52.910773+00
2990	Al Baṭḩah	BA	215	2019-09-04 14:49:52.930247+00
2991	Baḩr al Ghazāl	BG	215	2019-09-04 14:49:52.939747+00
2992	Būrkū	BO	215	2019-09-04 14:49:52.949335+00
2993	Shārī Bāqirmī	CB	215	2019-09-04 14:49:52.958737+00
2994	Innīdī	EN	215	2019-09-04 14:49:52.967489+00
2995	Qīrā	GR	215	2019-09-04 14:49:52.976885+00
2996	Ḥajjar Lamīs	HL	215	2019-09-04 14:49:52.985792+00
2997	Kānim	KA	215	2019-09-04 14:49:52.994282+00
2998	Al Buḩayrah	LC	215	2019-09-04 14:49:53.009118+00
2999	Lūqūn al Gharbī	LO	215	2019-09-04 14:49:53.018266+00
3000	Lūqūn ash Sharqī	LR	215	2019-09-04 14:49:53.026531+00
3001	Māndūl	MA	215	2019-09-04 14:49:53.035455+00
3002	Shārī al Awsaṭ	MC	215	2019-09-04 14:49:53.044375+00
3003	Māyū Kībbī ash Sharqī	ME	215	2019-09-04 14:49:53.053867+00
3004	Māyū Kībbī al Gharbī	MO	215	2019-09-04 14:49:53.062658+00
3005	Madīnat Injamīnā	ND	215	2019-09-04 14:49:53.072048+00
3006	Waddāy	OD	215	2019-09-04 14:49:53.080453+00
3007	Salāmāt	SA	215	2019-09-04 14:49:53.089404+00
3008	Sīlā	SI	215	2019-09-04 14:49:53.099035+00
3009	Tānjilī	TA	215	2019-09-04 14:49:53.107589+00
3010	Tibastī	TI	215	2019-09-04 14:49:53.116835+00
3011	Wādī Fīrā	WF	215	2019-09-04 14:49:53.125414+00
3012	Région du Centre	C	217	2019-09-04 14:49:53.139183+00
3013	Région de la Kara	K	217	2019-09-04 14:49:53.150333+00
3014	Région Maritime	M	217	2019-09-04 14:49:53.159599+00
3015	Région des Plateaux	P	217	2019-09-04 14:49:53.170057+00
3016	Région des Savannes	S	217	2019-09-04 14:49:53.17973+00
3017	Krung Thep Maha Nakhon Bangkok	10	218	2019-09-04 14:49:53.193967+00
3018	Samut Prakan	11	218	2019-09-04 14:49:53.202901+00
3019	Nonthaburi	12	218	2019-09-04 14:49:53.211819+00
3020	Pathum Thani	13	218	2019-09-04 14:49:53.2206+00
3021	Phra Nakhon Si Ayutthaya	14	218	2019-09-04 14:49:53.23023+00
3022	Ang Thong	15	218	2019-09-04 14:49:53.239196+00
3023	Lop Buri	16	218	2019-09-04 14:49:53.248238+00
3024	Sing Buri	17	218	2019-09-04 14:49:53.257029+00
3025	Chai Nat	18	218	2019-09-04 14:49:53.266539+00
3026	Saraburi	19	218	2019-09-04 14:49:53.275783+00
3027	Chon Buri	20	218	2019-09-04 14:49:53.284554+00
3028	Rayong	21	218	2019-09-04 14:49:53.293611+00
3029	Chanthaburi	22	218	2019-09-04 14:49:53.302656+00
3030	Trat	23	218	2019-09-04 14:49:53.311392+00
3031	Chachoengsao	24	218	2019-09-04 14:49:53.320273+00
3032	Prachin Buri	25	218	2019-09-04 14:49:53.330733+00
3033	Nakhon Nayok	26	218	2019-09-04 14:49:53.339691+00
3034	Sa Kaeo	27	218	2019-09-04 14:49:53.349001+00
3035	Nakhon Ratchasima	30	218	2019-09-04 14:49:53.358409+00
3036	Buri Ram	31	218	2019-09-04 14:49:53.368249+00
3037	Surin	32	218	2019-09-04 14:49:53.377277+00
3038	Si Sa Ket	33	218	2019-09-04 14:49:53.386356+00
3039	Ubon Ratchathani	34	218	2019-09-04 14:49:53.395408+00
3040	Yasothon	35	218	2019-09-04 14:49:53.403816+00
3041	Chaiyaphum	36	218	2019-09-04 14:49:53.412579+00
3042	Amnat Charoen	37	218	2019-09-04 14:49:53.421676+00
3043	Nong Bua Lam Phu	39	218	2019-09-04 14:49:53.430952+00
3044	Khon Kaen	40	218	2019-09-04 14:49:53.440091+00
3045	Udon Thani	41	218	2019-09-04 14:49:53.450427+00
3046	Loei	42	218	2019-09-04 14:49:53.46452+00
3047	Nong Khai	43	218	2019-09-04 14:49:53.474045+00
3048	Maha Sarakham	44	218	2019-09-04 14:49:53.483615+00
3049	Roi Et	45	218	2019-09-04 14:49:53.492648+00
3050	Kalasin	46	218	2019-09-04 14:49:53.501849+00
3051	Sakon Nakhon	47	218	2019-09-04 14:49:53.512343+00
3052	Nakhon Phanom	48	218	2019-09-04 14:49:53.520518+00
3053	Mukdahan	49	218	2019-09-04 14:49:53.529967+00
3054	Chiang Mai	50	218	2019-09-04 14:49:53.539303+00
3055	Lamphun	51	218	2019-09-04 14:49:53.548486+00
3056	Lampang	52	218	2019-09-04 14:49:53.557903+00
3057	Uttaradit	53	218	2019-09-04 14:49:53.567078+00
3058	Phrae	54	218	2019-09-04 14:49:53.576102+00
3059	Nan	55	218	2019-09-04 14:49:53.585146+00
3060	Phayao	56	218	2019-09-04 14:49:53.594127+00
3061	Chiang Rai	57	218	2019-09-04 14:49:53.60308+00
3062	Mae Hong Son	58	218	2019-09-04 14:49:53.612112+00
3063	Nakhon Sawan	60	218	2019-09-04 14:49:53.620578+00
3064	Uthai Thani	61	218	2019-09-04 14:49:53.630068+00
3065	Kamphaeng Phet	62	218	2019-09-04 14:49:53.638987+00
3066	Tak	63	218	2019-09-04 14:49:53.648252+00
3067	Sukhothai	64	218	2019-09-04 14:49:53.657134+00
3068	Phitsanulok	65	218	2019-09-04 14:49:53.666308+00
3069	Phichit	66	218	2019-09-04 14:49:53.674977+00
3070	Phetchabun	67	218	2019-09-04 14:49:53.684249+00
3071	Ratchaburi	70	218	2019-09-04 14:49:53.693829+00
3072	Kanchanaburi	71	218	2019-09-04 14:49:53.702721+00
3073	Suphan Buri	72	218	2019-09-04 14:49:53.711783+00
3074	Nakhon Pathom	73	218	2019-09-04 14:49:53.720887+00
3075	Samut Sakhon	74	218	2019-09-04 14:49:53.730107+00
3076	Samut Songkhram	75	218	2019-09-04 14:49:53.739966+00
3077	Phetchaburi	76	218	2019-09-04 14:49:53.750284+00
3078	Prachuap Khiri Khan	77	218	2019-09-04 14:49:53.7591+00
3079	Nakhon Si Thammarat	80	218	2019-09-04 14:49:53.768067+00
3080	Krabi	81	218	2019-09-04 14:49:53.776722+00
3081	Phangnga	82	218	2019-09-04 14:49:53.785782+00
3082	Phuket	83	218	2019-09-04 14:49:53.794771+00
3083	Surat Thani	84	218	2019-09-04 14:49:53.803867+00
3084	Ranong	85	218	2019-09-04 14:49:53.812963+00
3085	Chumphon	86	218	2019-09-04 14:49:53.821592+00
3086	Songkhla	90	218	2019-09-04 14:49:53.830417+00
3087	Satun	91	218	2019-09-04 14:49:53.839331+00
3088	Trang	92	218	2019-09-04 14:49:53.849031+00
3089	Phatthalung	93	218	2019-09-04 14:49:53.85878+00
3090	Pattani	94	218	2019-09-04 14:49:53.869383+00
3091	Yala	95	218	2019-09-04 14:49:53.878522+00
3092	Narathiwat	96	218	2019-09-04 14:49:53.893982+00
3093	Phatthaya	S	218	2019-09-04 14:49:53.906684+00
3094	Gorno-Badakhshan	GB	219	2019-09-04 14:49:53.930926+00
3095	Khatlon	KT	219	2019-09-04 14:49:53.950859+00
3096	Sughd	SU	219	2019-09-04 14:49:53.972903+00
3097	Aileu	AL	221	2019-09-04 14:49:53.997306+00
3098	Ainaro	AN	221	2019-09-04 14:49:54.014019+00
3099	Baucau	BA	221	2019-09-04 14:49:54.036209+00
3100	Bobonaro	BO	221	2019-09-04 14:49:54.06013+00
3101	Cova Lima	CO	221	2019-09-04 14:49:54.083791+00
3102	Díli	DI	221	2019-09-04 14:49:54.115352+00
3103	Ermera	ER	221	2019-09-04 14:49:54.128777+00
3104	Lautem	LA	221	2019-09-04 14:49:54.156252+00
3105	Liquiça	LI	221	2019-09-04 14:49:54.167152+00
3106	Manufahi	MF	221	2019-09-04 14:49:54.180097+00
3107	Manatuto	MT	221	2019-09-04 14:49:54.190439+00
3108	Oecussi	OE	221	2019-09-04 14:49:54.199505+00
3109	Viqueque	VI	221	2019-09-04 14:49:54.213946+00
3110	Ahal	A	222	2019-09-04 14:49:54.229644+00
3111	Balkan	B	222	2019-09-04 14:49:54.239268+00
3112	Daşoguz	D	222	2019-09-04 14:49:54.248058+00
3113	Lebap	L	222	2019-09-04 14:49:54.262677+00
3114	Mary	M	222	2019-09-04 14:49:54.272291+00
3115	Aşgabat	S	222	2019-09-04 14:49:54.28068+00
3116	Tunis	11	223	2019-09-04 14:49:54.294878+00
3117	Ariana	12	223	2019-09-04 14:49:54.304477+00
3118	Ben Arous	13	223	2019-09-04 14:49:54.317083+00
3119	La Manouba	14	223	2019-09-04 14:49:54.327154+00
3120	Nabeul	21	223	2019-09-04 14:49:54.336754+00
3121	Zaghouan	22	223	2019-09-04 14:49:54.344997+00
3122	Bizerte	23	223	2019-09-04 14:49:54.353941+00
3123	Béja	31	223	2019-09-04 14:49:54.365239+00
3124	Jendouba	32	223	2019-09-04 14:49:54.382919+00
3125	Le Kef	33	223	2019-09-04 14:49:54.409445+00
3126	Siliana	34	223	2019-09-04 14:49:54.42887+00
3127	Kairouan	41	223	2019-09-04 14:49:54.445885+00
3128	Kasserine	42	223	2019-09-04 14:49:54.495219+00
3129	Sidi Bouzid	43	223	2019-09-04 14:49:54.525224+00
3130	Sousse	51	223	2019-09-04 14:49:54.549562+00
3131	Monastir	52	223	2019-09-04 14:49:54.562492+00
3132	Mahdia	53	223	2019-09-04 14:49:54.590553+00
3133	Sfax	61	223	2019-09-04 14:49:54.602685+00
3134	Gafsa	71	223	2019-09-04 14:49:54.612584+00
3135	Tozeur	72	223	2019-09-04 14:49:54.622279+00
3136	Kebili	73	223	2019-09-04 14:49:54.63234+00
3137	Gabès	81	223	2019-09-04 14:49:54.643343+00
3138	Medenine	82	223	2019-09-04 14:49:54.652845+00
3139	Tataouine	83	223	2019-09-04 14:49:54.662507+00
3140	'Eua	01	224	2019-09-04 14:49:54.677509+00
3141	Ha'apai	02	224	2019-09-04 14:49:54.687289+00
3142	Niuas	03	224	2019-09-04 14:49:54.695947+00
3143	Tongatapu	04	224	2019-09-04 14:49:54.704775+00
3144	Vava'u	05	224	2019-09-04 14:49:54.71367+00
3145	Adana	01	225	2019-09-04 14:49:54.727657+00
3146	Adıyaman	02	225	2019-09-04 14:49:54.736778+00
3147	Afyonkarahisar	03	225	2019-09-04 14:49:54.745675+00
3148	Ağrı	04	225	2019-09-04 14:49:54.754415+00
3149	Amasya	05	225	2019-09-04 14:49:54.762972+00
3150	Ankara	06	225	2019-09-04 14:49:54.771459+00
3151	Antalya	07	225	2019-09-04 14:49:54.78677+00
3152	Artvin	08	225	2019-09-04 14:49:54.809342+00
3153	Aydın	09	225	2019-09-04 14:49:54.844448+00
3154	Balıkesir	10	225	2019-09-04 14:49:54.894551+00
3155	Bilecik	11	225	2019-09-04 14:49:54.936368+00
3156	Bingöl	12	225	2019-09-04 14:49:54.948361+00
3157	Bitlis	13	225	2019-09-04 14:49:54.96037+00
3158	Bolu	14	225	2019-09-04 14:49:54.969669+00
3159	Burdur	15	225	2019-09-04 14:49:54.978738+00
3160	Bursa	16	225	2019-09-04 14:49:54.9928+00
3161	Çanakkale	17	225	2019-09-04 14:49:55.001768+00
3162	Çankırı	18	225	2019-09-04 14:49:55.011722+00
3163	Çorum	19	225	2019-09-04 14:49:55.021422+00
3164	Denizli	20	225	2019-09-04 14:49:55.030854+00
3165	Diyarbakır	21	225	2019-09-04 14:49:55.040513+00
3166	Edirne	22	225	2019-09-04 14:49:55.049127+00
3167	Elazığ	23	225	2019-09-04 14:49:55.058592+00
3168	Erzincan	24	225	2019-09-04 14:49:55.070304+00
3169	Erzurum	25	225	2019-09-04 14:49:55.080175+00
3170	Eskişehir	26	225	2019-09-04 14:49:55.095119+00
3171	Gaziantep	27	225	2019-09-04 14:49:55.108135+00
3172	Giresun	28	225	2019-09-04 14:49:55.121095+00
3173	Gümüşhane	29	225	2019-09-04 14:49:55.129583+00
3174	Hakkâri	30	225	2019-09-04 14:49:55.138846+00
3175	Hatay	31	225	2019-09-04 14:49:55.147938+00
3176	Isparta	32	225	2019-09-04 14:49:55.157903+00
3177	Mersin	33	225	2019-09-04 14:49:55.168299+00
3178	İstanbul	34	225	2019-09-04 14:49:55.178612+00
3179	İzmir	35	225	2019-09-04 14:49:55.191458+00
3180	Kars	36	225	2019-09-04 14:49:55.201394+00
3181	Kastamonu	37	225	2019-09-04 14:49:55.21017+00
3182	Kayseri	38	225	2019-09-04 14:49:55.219087+00
3183	Kırklareli	39	225	2019-09-04 14:49:55.227659+00
3184	Kırşehir	40	225	2019-09-04 14:49:55.236536+00
3185	Kocaeli	41	225	2019-09-04 14:49:55.247656+00
3186	Konya	42	225	2019-09-04 14:49:55.258172+00
3187	Kütahya	43	225	2019-09-04 14:49:55.266625+00
3188	Malatya	44	225	2019-09-04 14:49:55.274597+00
3189	Manisa	45	225	2019-09-04 14:49:55.289187+00
3190	Kahramanmaraş	46	225	2019-09-04 14:49:55.300132+00
3191	Mardin	47	225	2019-09-04 14:49:55.313007+00
3192	Muğla	48	225	2019-09-04 14:49:55.323481+00
3193	Muş	49	225	2019-09-04 14:49:55.332361+00
3194	Nevşehir	50	225	2019-09-04 14:49:55.342613+00
3195	Niğde	51	225	2019-09-04 14:49:55.352149+00
3196	Ordu	52	225	2019-09-04 14:49:55.361618+00
3197	Rize	53	225	2019-09-04 14:49:55.37082+00
3198	Sakarya	54	225	2019-09-04 14:49:55.37928+00
3199	Samsun	55	225	2019-09-04 14:49:55.390203+00
3200	Siirt	56	225	2019-09-04 14:49:55.399702+00
3201	Sinop	57	225	2019-09-04 14:49:55.409212+00
3202	Sivas	58	225	2019-09-04 14:49:55.418206+00
3203	Tekirdağ	59	225	2019-09-04 14:49:55.426674+00
3204	Tokat	60	225	2019-09-04 14:49:55.435899+00
3205	Trabzon	61	225	2019-09-04 14:49:55.445291+00
3206	Tunceli	62	225	2019-09-04 14:49:55.454549+00
3207	Şanlıurfa	63	225	2019-09-04 14:49:55.465651+00
3208	Uşak	64	225	2019-09-04 14:49:55.487274+00
3209	Van	65	225	2019-09-04 14:49:55.497256+00
3210	Yozgat	66	225	2019-09-04 14:49:55.505945+00
3211	Zonguldak	67	225	2019-09-04 14:49:55.51576+00
3212	Aksaray	68	225	2019-09-04 14:49:55.525858+00
3213	Bayburt	69	225	2019-09-04 14:49:55.536457+00
3214	Karaman	70	225	2019-09-04 14:49:55.551119+00
3215	Kırıkkale	71	225	2019-09-04 14:49:55.560953+00
3216	Batman	72	225	2019-09-04 14:49:55.571815+00
3217	Şırnak	73	225	2019-09-04 14:49:55.580695+00
3218	Bartın	74	225	2019-09-04 14:49:55.591997+00
3219	Ardahan	75	225	2019-09-04 14:49:55.601364+00
3220	Iğdır	76	225	2019-09-04 14:49:55.611399+00
3221	Yalova	77	225	2019-09-04 14:49:55.620354+00
3222	Karabük	78	225	2019-09-04 14:49:55.629442+00
3223	Kilis	79	225	2019-09-04 14:49:55.64241+00
3224	Osmaniye	80	225	2019-09-04 14:49:55.651881+00
3225	Düzce	81	225	2019-09-04 14:49:55.66027+00
3226	Arima	ARI	226	2019-09-04 14:49:55.675448+00
3227	Chaguanas	CHA	226	2019-09-04 14:49:55.684683+00
3228	Couva-Tabaquite-Talparo	CTT	226	2019-09-04 14:49:55.700025+00
3229	Diego Martin	DMN	226	2019-09-04 14:49:55.709904+00
3230	Eastern Tobago	ETO	226	2019-09-04 14:49:55.720511+00
3231	Penal-Debe	PED	226	2019-09-04 14:49:55.730135+00
3232	Port of Spain	POS	226	2019-09-04 14:49:55.746944+00
3233	Princes Town	PRT	226	2019-09-04 14:49:55.758451+00
3234	Point Fortin	PTF	226	2019-09-04 14:49:55.770744+00
3235	Rio Claro-Mayaro	RCM	226	2019-09-04 14:49:55.779933+00
3236	San Fernando	SFO	226	2019-09-04 14:49:55.789054+00
3237	Sangre Grande	SGE	226	2019-09-04 14:49:55.804815+00
3238	Siparia	SIP	226	2019-09-04 14:49:55.815033+00
3239	San Juan-Laventille	SJL	226	2019-09-04 14:49:55.827645+00
3240	Tunapuna-Piarco	TUP	226	2019-09-04 14:49:55.84316+00
3241	Western Tobago	WTO	226	2019-09-04 14:49:55.853693+00
3242	Funafuti	FUN	227	2019-09-04 14:49:55.873837+00
3243	Niutao	NIT	227	2019-09-04 14:49:55.884546+00
3244	Nukufetau	NKF	227	2019-09-04 14:49:55.893451+00
3245	Nukulaelae	NKL	227	2019-09-04 14:49:55.905757+00
3246	Nanumea	NMA	227	2019-09-04 14:49:55.917104+00
3247	Nanumanga	NMG	227	2019-09-04 14:49:55.928012+00
3248	Nui	NUI	227	2019-09-04 14:49:55.938713+00
3249	Vaitupu	VAI	227	2019-09-04 14:49:55.9479+00
3250	Changhua	CHA	228	2019-09-04 14:49:55.962592+00
3251	Chiay City	CYI	228	2019-09-04 14:49:55.972414+00
3252	Chiayi	CYQ	228	2019-09-04 14:49:55.981801+00
3253	Hsinchu	HSQ	228	2019-09-04 14:49:55.992939+00
3254	Hsinchui City	HSZ	228	2019-09-04 14:49:56.001897+00
3255	Hualien	HUA	228	2019-09-04 14:49:56.012428+00
3256	Ilan	ILA	228	2019-09-04 14:49:56.020649+00
3257	Keelung City	KEE	228	2019-09-04 14:49:56.029585+00
3258	Kaohsiung City	KHH	228	2019-09-04 14:49:56.040435+00
3259	Kaohsiung	KHQ	228	2019-09-04 14:49:56.050577+00
3260	Miaoli	MIA	228	2019-09-04 14:49:56.059993+00
3261	Nantou	NAN	228	2019-09-04 14:49:56.069802+00
3262	Penghu	PEN	228	2019-09-04 14:49:56.080254+00
3263	Pingtung	PIF	228	2019-09-04 14:49:56.089852+00
3264	Taoyuan	TAO	228	2019-09-04 14:49:56.100378+00
3265	Tainan City	TNN	228	2019-09-04 14:49:56.115227+00
3266	Tainan	TNQ	228	2019-09-04 14:49:56.124783+00
3267	Taipei City	TPE	228	2019-09-04 14:49:56.133443+00
3268	Taipei	TPQ	228	2019-09-04 14:49:56.144174+00
3269	Taitung	TTT	228	2019-09-04 14:49:56.157151+00
3270	Taichung City	TXG	228	2019-09-04 14:49:56.166151+00
3271	Taichung	TXQ	228	2019-09-04 14:49:56.179635+00
3272	Yunlin	YUN	228	2019-09-04 14:49:56.188826+00
3273	Arusha	01	229	2019-09-04 14:49:56.203688+00
3274	Dar-es-Salaam	02	229	2019-09-04 14:49:56.217848+00
3275	Dodoma	03	229	2019-09-04 14:49:56.228491+00
3276	Iringa	04	229	2019-09-04 14:49:56.237484+00
3277	Kagera	05	229	2019-09-04 14:49:56.253081+00
3278	Kaskazini Pemba	06	229	2019-09-04 14:49:56.262504+00
3279	Kaskazini Unguja	07	229	2019-09-04 14:49:56.274656+00
3280	Kigoma	08	229	2019-09-04 14:49:56.286487+00
3281	Kilimanjaro	09	229	2019-09-04 14:49:56.297463+00
3282	Kusini Pemba	10	229	2019-09-04 14:49:56.307122+00
3283	Kusini Unguja	11	229	2019-09-04 14:49:56.316761+00
3284	Lindi	12	229	2019-09-04 14:49:56.324834+00
3285	Mara	13	229	2019-09-04 14:49:56.333187+00
3286	Mbeya	14	229	2019-09-04 14:49:56.341453+00
3287	Mjini Magharibi	15	229	2019-09-04 14:49:56.350186+00
3288	Morogoro	16	229	2019-09-04 14:49:56.360708+00
3289	Mtwara	17	229	2019-09-04 14:49:56.372421+00
3290	Mwanza	18	229	2019-09-04 14:49:56.381674+00
3291	Pwani	19	229	2019-09-04 14:49:56.39019+00
3292	Rukwa	20	229	2019-09-04 14:49:56.400176+00
3293	Ruvuma	21	229	2019-09-04 14:49:56.411088+00
3294	Shinyanga	22	229	2019-09-04 14:49:56.421136+00
3295	Singida	23	229	2019-09-04 14:49:56.430622+00
3296	Tabora	24	229	2019-09-04 14:49:56.441831+00
3297	Tanga	25	229	2019-09-04 14:49:56.454018+00
3298	Manyara	26	229	2019-09-04 14:49:56.462708+00
3299	Vinnyts'ka Oblast'	05	230	2019-09-04 14:49:56.482873+00
3300	Volyns'ka Oblast'	07	230	2019-09-04 14:49:56.494075+00
3301	Luhans'ka Oblast'	09	230	2019-09-04 14:49:56.502722+00
3302	Dnipropetrovs'ka Oblast'	12	230	2019-09-04 14:49:56.512005+00
3303	Donets'ka Oblast'	14	230	2019-09-04 14:49:56.523482+00
3304	Zhytomyrs'ka Oblast'	18	230	2019-09-04 14:49:56.533438+00
3305	Zakarpats'ka Oblast'	21	230	2019-09-04 14:49:56.543142+00
3306	Zaporiz'ka Oblast'	23	230	2019-09-04 14:49:56.551888+00
3307	Ivano-Frankivs'ka Oblast'	26	230	2019-09-04 14:49:56.562433+00
3308	Kyïvs'ka mis'ka rada	30	230	2019-09-04 14:49:56.572676+00
3309	Kyïvs'ka Oblast'	32	230	2019-09-04 14:49:56.581861+00
3310	Kirovohrads'ka Oblast'	35	230	2019-09-04 14:49:56.591562+00
3311	Sevastopol	40	230	2019-09-04 14:49:56.601026+00
3312	Respublika Krym	43	230	2019-09-04 14:49:56.615052+00
3313	L'vivs'ka Oblast'	46	230	2019-09-04 14:49:56.624529+00
3314	Mykolaïvs'ka Oblast'	48	230	2019-09-04 14:49:56.633209+00
3315	Odes'ka Oblast'	51	230	2019-09-04 14:49:56.645678+00
3316	Poltavs'ka Oblast'	53	230	2019-09-04 14:49:56.664254+00
3317	Rivnens'ka Oblast'	56	230	2019-09-04 14:49:56.708652+00
3318	Sums 'ka Oblast'	59	230	2019-09-04 14:49:56.744605+00
3319	Ternopil's'ka Oblast'	61	230	2019-09-04 14:49:56.759323+00
3320	Kharkivs'ka Oblast'	63	230	2019-09-04 14:49:56.770776+00
3321	Khersons'ka Oblast'	65	230	2019-09-04 14:49:56.780782+00
3322	Khmel'nyts'ka Oblast'	68	230	2019-09-04 14:49:56.790152+00
3323	Cherkas'ka Oblast'	71	230	2019-09-04 14:49:56.798458+00
3324	Chernihivs'ka Oblast'	74	230	2019-09-04 14:49:56.80752+00
3325	Chernivets'ka Oblast'	77	230	2019-09-04 14:49:56.816406+00
3326	Central	C	231	2019-09-04 14:49:56.829788+00
3327	Eastern	E	231	2019-09-04 14:49:56.840023+00
3328	Northern	N	231	2019-09-04 14:49:56.850486+00
3329	Western	W	231	2019-09-04 14:49:56.859862+00
3330	Johnston Atoll	67	232	2019-09-04 14:49:56.875838+00
3331	Midway Islands	71	232	2019-09-04 14:49:56.887444+00
3332	Navassa Island	76	232	2019-09-04 14:49:56.896441+00
3333	Wake Island	79	232	2019-09-04 14:49:56.906493+00
3334	Baker Island	81	232	2019-09-04 14:49:56.91641+00
3335	Howland Island	84	232	2019-09-04 14:49:56.92718+00
3336	Jarvis Island	86	232	2019-09-04 14:49:56.936516+00
3337	Kingman Reef	89	232	2019-09-04 14:49:56.946261+00
3338	Palmyra Atoll	95	232	2019-09-04 14:49:56.95606+00
3339	Alaska	AK	233	2019-09-04 14:49:56.989741+00
3340	Alabama	AL	233	2019-09-04 14:49:57.018313+00
3341	Arkansas	AR	233	2019-09-04 14:49:57.050498+00
3342	American Samoa	AS	233	2019-09-04 14:49:57.093056+00
3343	Arizona	AZ	233	2019-09-04 14:49:57.131938+00
3344	California	CA	233	2019-09-04 14:49:57.160531+00
3345	Colorado	CO	233	2019-09-04 14:49:57.176322+00
3346	Connecticut	CT	233	2019-09-04 14:49:57.187296+00
3347	District of Columbia	DC	233	2019-09-04 14:49:57.196667+00
3348	Delaware	DE	233	2019-09-04 14:49:57.20608+00
3349	Florida	FL	233	2019-09-04 14:49:57.215007+00
3350	Georgia	GA	233	2019-09-04 14:49:57.223622+00
3351	Guam	GU	233	2019-09-04 14:49:57.232957+00
3352	Hawaii	HI	233	2019-09-04 14:49:57.242048+00
3353	Iowa	IA	233	2019-09-04 14:49:57.250724+00
3354	Idaho	ID	233	2019-09-04 14:49:57.259564+00
3355	Illinois	IL	233	2019-09-04 14:49:57.267752+00
3356	Indiana	IN	233	2019-09-04 14:49:57.276438+00
3357	Kansas	KS	233	2019-09-04 14:49:57.28535+00
3358	Kentucky	KY	233	2019-09-04 14:49:57.2971+00
3359	Louisiana	LA	233	2019-09-04 14:49:57.306624+00
3360	Massachusetts	MA	233	2019-09-04 14:49:57.31568+00
3361	Maryland	MD	233	2019-09-04 14:49:57.324913+00
3362	Maine	ME	233	2019-09-04 14:49:57.333558+00
3363	Michigan	MI	233	2019-09-04 14:49:57.342751+00
3364	Minnesota	MN	233	2019-09-04 14:49:57.352039+00
3365	Missouri	MO	233	2019-09-04 14:49:57.36075+00
3366	Northern Mariana Islands	MP	233	2019-09-04 14:49:57.369756+00
3367	Mississippi	MS	233	2019-09-04 14:49:57.384494+00
3368	Montana	MT	233	2019-09-04 14:49:57.394012+00
3369	North Carolina	NC	233	2019-09-04 14:49:57.403929+00
3370	North Dakota	ND	233	2019-09-04 14:49:57.413407+00
3371	Nebraska	NE	233	2019-09-04 14:49:57.422786+00
3372	New Hampshire	NH	233	2019-09-04 14:49:57.431815+00
3373	New Jersey	NJ	233	2019-09-04 14:49:57.439723+00
3374	New Mexico	NM	233	2019-09-04 14:49:57.448901+00
3375	Nevada	NV	233	2019-09-04 14:49:57.460043+00
3376	New York	NY	233	2019-09-04 14:49:57.469667+00
3377	Ohio	OH	233	2019-09-04 14:49:57.479841+00
3378	Oklahoma	OK	233	2019-09-04 14:49:57.488418+00
3379	Oregon	OR	233	2019-09-04 14:49:57.498456+00
3380	Pennsylvania	PA	233	2019-09-04 14:49:57.508152+00
3381	Puerto Rico	PR	233	2019-09-04 14:49:57.518545+00
3382	Rhode Island	RI	233	2019-09-04 14:49:57.52761+00
3383	South Carolina	SC	233	2019-09-04 14:49:57.53637+00
3384	South Dakota	SD	233	2019-09-04 14:49:57.545511+00
3385	Tennessee	TN	233	2019-09-04 14:49:57.553984+00
3386	Texas	TX	233	2019-09-04 14:49:57.567438+00
3387	United States Minor Outlying Islands	UM	233	2019-09-04 14:49:57.596589+00
3388	Utah	UT	233	2019-09-04 14:49:57.647031+00
3389	Virginia	VA	233	2019-09-04 14:49:57.696788+00
3390	Virgin Islands	VI	233	2019-09-04 14:49:57.738274+00
3391	Vermont	VT	233	2019-09-04 14:49:57.779304+00
3392	Washington	WA	233	2019-09-04 14:49:57.811005+00
3393	Wisconsin	WI	233	2019-09-04 14:49:57.845648+00
3394	West Virginia	WV	233	2019-09-04 14:49:57.884945+00
3395	Wyoming	WY	233	2019-09-04 14:49:57.922865+00
3396	Armed Forces Americas (except Canada)	AA	233	2019-09-04 14:49:57.961713+00
3397	Armed Forces Africa, Canada, Europe, Middle East	AE	233	2019-09-04 14:49:57.9953+00
3398	Armed Forces Pacific	AP	233	2019-09-04 14:49:58.027009+00
3399	Artigas	AR	234	2019-09-04 14:49:58.080915+00
3400	Canelones	CA	234	2019-09-04 14:49:58.111284+00
3401	Cerro Largo	CL	234	2019-09-04 14:49:58.146293+00
3402	Colonia	CO	234	2019-09-04 14:49:58.163934+00
3403	Durazno	DU	234	2019-09-04 14:49:58.193439+00
3404	Florida	FD	234	2019-09-04 14:49:58.20626+00
3405	Flores	FS	234	2019-09-04 14:49:58.215559+00
3406	Lavalleja	LA	234	2019-09-04 14:49:58.224595+00
3407	Maldonado	MA	234	2019-09-04 14:49:58.234237+00
3408	Montevideo	MO	234	2019-09-04 14:49:58.244944+00
3409	Paysandú	PA	234	2019-09-04 14:49:58.254157+00
3410	Río Negro	RN	234	2019-09-04 14:49:58.263226+00
3411	Rocha	RO	234	2019-09-04 14:49:58.273912+00
3412	Rivera	RV	234	2019-09-04 14:49:58.281629+00
3413	Salto	SA	234	2019-09-04 14:49:58.291199+00
3414	San José	SJ	234	2019-09-04 14:49:58.299008+00
3415	Soriano	SO	234	2019-09-04 14:49:58.306258+00
3416	Tacuarembó	TA	234	2019-09-04 14:49:58.315078+00
3417	Treinta y Tres	TT	234	2019-09-04 14:49:58.324428+00
3418	Andijon	AN	235	2019-09-04 14:49:58.353199+00
3419	Buxoro	BU	235	2019-09-04 14:49:58.363309+00
3420	Farg'ona	FA	235	2019-09-04 14:49:58.373852+00
3421	Jizzax	JI	235	2019-09-04 14:49:58.382989+00
3422	Namangan	NG	235	2019-09-04 14:49:58.392009+00
3423	Navoiy	NW	235	2019-09-04 14:49:58.401235+00
3424	Qashqadaryo	QA	235	2019-09-04 14:49:58.411573+00
3425	Qoraqalpog'iston Respublikasi	QR	235	2019-09-04 14:49:58.420117+00
3426	Samarqand	SA	235	2019-09-04 14:49:58.437048+00
3427	Sirdaryo	SI	235	2019-09-04 14:49:58.471515+00
3428	Surxondaryo	SU	235	2019-09-04 14:49:58.494004+00
3429	Toshkent	TK	235	2019-09-04 14:49:58.537084+00
3430	Xorazm	XO	235	2019-09-04 14:49:58.598169+00
3431	Charlotte	01	237	2019-09-04 14:49:58.66007+00
3432	Saint Andrew	02	237	2019-09-04 14:49:58.713016+00
3433	Saint David	03	237	2019-09-04 14:49:58.738575+00
3434	Saint George	04	237	2019-09-04 14:49:58.780041+00
3435	Saint Patrick	05	237	2019-09-04 14:49:58.804986+00
3436	Grenadines	06	237	2019-09-04 14:49:58.84953+00
3437	Distrito Federal	A	238	2019-09-04 14:49:58.905064+00
3438	Anzoátegui	B	238	2019-09-04 14:49:58.937594+00
3439	Apure	C	238	2019-09-04 14:49:58.980687+00
3440	Aragua	D	238	2019-09-04 14:49:59.003515+00
3441	Barinas	E	238	2019-09-04 14:49:59.033333+00
3442	Bolívar	F	238	2019-09-04 14:49:59.047486+00
3443	Carabobo	G	238	2019-09-04 14:49:59.057648+00
3444	Cojedes	H	238	2019-09-04 14:49:59.067379+00
3445	Falcón	I	238	2019-09-04 14:49:59.075758+00
3446	Guárico	J	238	2019-09-04 14:49:59.083608+00
3447	Lara	K	238	2019-09-04 14:49:59.093814+00
3448	Mérida	L	238	2019-09-04 14:49:59.103695+00
3449	Miranda	M	238	2019-09-04 14:49:59.113984+00
3450	Monagas	N	238	2019-09-04 14:49:59.126281+00
3451	Nueva Esparta	O	238	2019-09-04 14:49:59.13702+00
3452	Portuguesa	P	238	2019-09-04 14:49:59.149342+00
3453	Sucre	R	238	2019-09-04 14:49:59.158399+00
3454	Táchira	S	238	2019-09-04 14:49:59.167833+00
3455	Trujillo	T	238	2019-09-04 14:49:59.177947+00
3456	Yaracuy	U	238	2019-09-04 14:49:59.187732+00
3457	Zulia	V	238	2019-09-04 14:49:59.196844+00
3458	Dependencias Federales	W	238	2019-09-04 14:49:59.206337+00
3459	Vargas	X	238	2019-09-04 14:49:59.215627+00
3460	Delta Amacuro	Y	238	2019-09-04 14:49:59.224801+00
3461	Amazonas	Z	238	2019-09-04 14:49:59.234806+00
3462	Lai Châu	01	241	2019-09-04 14:49:59.250364+00
3463	Lào Cai	02	241	2019-09-04 14:49:59.260438+00
3464	Hà Giang	03	241	2019-09-04 14:49:59.277183+00
3465	Cao Bằng	04	241	2019-09-04 14:49:59.287717+00
3466	Sơn La	05	241	2019-09-04 14:49:59.298593+00
3467	Yên Bái	06	241	2019-09-04 14:49:59.309088+00
3468	Tuyên Quang	07	241	2019-09-04 14:49:59.319501+00
3469	Lạng Sơn	09	241	2019-09-04 14:49:59.329381+00
3470	Quảng Ninh	13	241	2019-09-04 14:49:59.339001+00
3471	Hoà Bình	14	241	2019-09-04 14:49:59.348367+00
3472	Hà Tây	15	241	2019-09-04 14:49:59.358295+00
3473	Ninh Bình	18	241	2019-09-04 14:49:59.367746+00
3474	Thái Bình	20	241	2019-09-04 14:49:59.38068+00
3475	Thanh Hóa	21	241	2019-09-04 14:49:59.391485+00
3476	Nghệ An	22	241	2019-09-04 14:49:59.400779+00
3477	Hà Tỉnh	23	241	2019-09-04 14:49:59.412272+00
3478	Quảng Bình	24	241	2019-09-04 14:49:59.422135+00
3479	Quảng Trị	25	241	2019-09-04 14:49:59.432499+00
3480	Thừa Thiên-Huế	26	241	2019-09-04 14:49:59.44251+00
3481	Quảng Nam	27	241	2019-09-04 14:49:59.452721+00
3482	Kon Tum	28	241	2019-09-04 14:49:59.461887+00
3483	Quảng Ngãi	29	241	2019-09-04 14:49:59.471825+00
3484	Gia Lai	30	241	2019-09-04 14:49:59.480931+00
3485	Bình Định	31	241	2019-09-04 14:49:59.489442+00
3486	Phú Yên	32	241	2019-09-04 14:49:59.498526+00
3487	Đắc Lắk	33	241	2019-09-04 14:49:59.508197+00
3488	Khánh Hòa	34	241	2019-09-04 14:49:59.517257+00
3489	Lâm Đồng	35	241	2019-09-04 14:49:59.52721+00
3490	Ninh Thuận	36	241	2019-09-04 14:49:59.536852+00
3491	Tây Ninh	37	241	2019-09-04 14:49:59.545535+00
3492	Đồng Nai	39	241	2019-09-04 14:49:59.554852+00
3493	Bình Thuận	40	241	2019-09-04 14:49:59.564981+00
3494	Long An	41	241	2019-09-04 14:49:59.574524+00
3495	Bà Rịa-Vũng Tàu	43	241	2019-09-04 14:49:59.584707+00
3496	An Giang	44	241	2019-09-04 14:49:59.594112+00
3497	Đồng Tháp	45	241	2019-09-04 14:49:59.603108+00
3498	Tiền Giang	46	241	2019-09-04 14:49:59.612326+00
3499	Kiên Giang	47	241	2019-09-04 14:49:59.621945+00
3500	Vĩnh Long	49	241	2019-09-04 14:49:59.631281+00
3501	Bến Tre	50	241	2019-09-04 14:49:59.640551+00
3502	Trà Vinh	51	241	2019-09-04 14:49:59.650342+00
3503	Sóc Trăng	52	241	2019-09-04 14:49:59.658734+00
3504	Bắc Kạn	53	241	2019-09-04 14:49:59.669002+00
3505	Bắc Giang	54	241	2019-09-04 14:49:59.679711+00
3506	Bạc Liêu	55	241	2019-09-04 14:49:59.68972+00
3507	Bắc Ninh	56	241	2019-09-04 14:49:59.699135+00
3508	Bình Dương	57	241	2019-09-04 14:49:59.709838+00
3509	Bình Phước	58	241	2019-09-04 14:49:59.720355+00
3510	Cà Mau	59	241	2019-09-04 14:49:59.729514+00
3511	Hải Duong	61	241	2019-09-04 14:49:59.738746+00
3512	Hà Nam	63	241	2019-09-04 14:49:59.747353+00
3513	Hưng Yên	66	241	2019-09-04 14:49:59.756327+00
3514	Nam Định	67	241	2019-09-04 14:49:59.765848+00
3515	Phú Thọ	68	241	2019-09-04 14:49:59.776076+00
3516	Thái Nguyên	69	241	2019-09-04 14:49:59.785433+00
3517	Vĩnh Phúc	70	241	2019-09-04 14:49:59.79422+00
3518	Điện Biên	71	241	2019-09-04 14:49:59.80981+00
3519	Đắk Nông	72	241	2019-09-04 14:49:59.81965+00
3520	Hậu Giang	73	241	2019-09-04 14:49:59.830397+00
3521	Cần Thơ	CT	241	2019-09-04 14:49:59.840224+00
3522	Đà Nẵng	DN	241	2019-09-04 14:49:59.850953+00
3523	Hà Nội	HN	241	2019-09-04 14:49:59.860539+00
3524	Hải Phòng	HP	241	2019-09-04 14:49:59.870279+00
3525	Hồ Chí Minh [Sài Gòn]	SG	241	2019-09-04 14:49:59.880065+00
3526	Malampa	MAP	242	2019-09-04 14:49:59.896929+00
3527	Pénama	PAM	242	2019-09-04 14:49:59.906532+00
3528	Sanma	SAM	242	2019-09-04 14:49:59.916431+00
3529	Shéfa	SEE	242	2019-09-04 14:49:59.926426+00
3530	Taféa	TAE	242	2019-09-04 14:49:59.936032+00
3531	Torba	TOB	242	2019-09-04 14:49:59.945644+00
3532	A'ana	AA	244	2019-09-04 14:49:59.962418+00
3533	Aiga-i-le-Tai	AL	244	2019-09-04 14:49:59.972239+00
3534	Atua	AT	244	2019-09-04 14:49:59.984251+00
3535	Fa'asaleleaga	FA	244	2019-09-04 14:49:59.993851+00
3536	Gaga'emauga	GE	244	2019-09-04 14:50:00.003643+00
3537	Gagaifomauga	GI	244	2019-09-04 14:50:00.014752+00
3538	Palauli	PA	244	2019-09-04 14:50:00.025785+00
3539	Satupa'itea	SA	244	2019-09-04 14:50:00.042028+00
3540	Tuamasaga	TU	244	2019-09-04 14:50:00.055128+00
3541	Va'a-o-Fonoti	VF	244	2019-09-04 14:50:00.067364+00
3542	Vaisigano	VS	244	2019-09-04 14:50:00.080818+00
3543	Abyān	AB	245	2019-09-04 14:50:00.11035+00
3544	'Adan	AD	245	2019-09-04 14:50:00.125725+00
3545	'Amrān	AM	245	2019-09-04 14:50:00.149022+00
3546	Al Bayḑā'	BA	245	2019-09-04 14:50:00.19594+00
3547	Aḑ Ḑāli‘	DA	245	2019-09-04 14:50:00.23717+00
3548	Dhamār	DH	245	2019-09-04 14:50:00.283943+00
3549	Ḩaḑramawt	HD	245	2019-09-04 14:50:00.312972+00
3550	Ḩajjah	HJ	245	2019-09-04 14:50:00.33331+00
3551	Ibb	IB	245	2019-09-04 14:50:00.345587+00
3552	Al Jawf	JA	245	2019-09-04 14:50:00.357607+00
3553	Laḩij	LA	245	2019-09-04 14:50:00.370845+00
3554	Ma'rib	MA	245	2019-09-04 14:50:00.38721+00
3555	Al Mahrah	MR	245	2019-09-04 14:50:00.401163+00
3556	Al Ḩudaydah	MU	245	2019-09-04 14:50:00.418143+00
3557	Al Maḩwīt	MW	245	2019-09-04 14:50:00.430798+00
3558	Raymah	RA	245	2019-09-04 14:50:00.446897+00
3559	Şa'dah	SD	245	2019-09-04 14:50:00.461161+00
3560	Shabwah	SH	245	2019-09-04 14:50:00.476809+00
3561	Şan'ā'	SN	245	2019-09-04 14:50:00.491445+00
3562	Tā'izz	TA	245	2019-09-04 14:50:00.520237+00
3563	Eastern Cape	EC	247	2019-09-04 14:50:00.539662+00
3564	Free State	FS	247	2019-09-04 14:50:00.555112+00
3565	Gauteng	GT	247	2019-09-04 14:50:00.566359+00
3566	Limpopo	LP	247	2019-09-04 14:50:00.603774+00
3567	Mpumalanga	MP	247	2019-09-04 14:50:00.635939+00
3568	Northern Cape	NC	247	2019-09-04 14:50:00.660874+00
3569	Kwazulu-Natal	NL	247	2019-09-04 14:50:00.675345+00
3570	North-West (South Africa)	NW	247	2019-09-04 14:50:00.699696+00
3571	Western Cape	WC	247	2019-09-04 14:50:00.712732+00
3572	Western	01	248	2019-09-04 14:50:00.729785+00
3573	Central	02	248	2019-09-04 14:50:00.738905+00
3574	Eastern	03	248	2019-09-04 14:50:00.748076+00
3575	Luapula	04	248	2019-09-04 14:50:00.75944+00
3576	Northern	05	248	2019-09-04 14:50:00.769888+00
3577	North-Western	06	248	2019-09-04 14:50:00.779318+00
3578	Southern (Zambia)	07	248	2019-09-04 14:50:00.788519+00
3579	Copperbelt	08	248	2019-09-04 14:50:00.798999+00
3580	Lusaka	09	248	2019-09-04 14:50:00.81274+00
3581	Bulawayo	BU	249	2019-09-04 14:50:00.829484+00
3582	Harare	HA	249	2019-09-04 14:50:00.840971+00
3583	Manicaland	MA	249	2019-09-04 14:50:00.854025+00
3584	Mashonaland Central	MC	249	2019-09-04 14:50:00.863343+00
3585	Mashonaland East	ME	249	2019-09-04 14:50:00.873482+00
3586	Midlands	MI	249	2019-09-04 14:50:00.883436+00
3587	Matabeleland North	MN	249	2019-09-04 14:50:00.893596+00
3588	Matabeleland South	MS	249	2019-09-04 14:50:00.906094+00
3589	Masvingo	MV	249	2019-09-04 14:50:00.917559+00
3590	Mashonaland West	MW	249	2019-09-04 14:50:00.928409+00
\.


--
-- Data for Name: spree_stock_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) FROM stdin;
1	1	1	0	2019-09-04 14:50:06.50517+00	2019-09-04 14:50:06.50517+00	t	\N
2	1	2	1	2019-09-04 14:50:06.660082+00	2020-12-14 21:11:37.163822+00	f	\N
3	1	3	0	2019-09-04 14:50:06.769132+00	2019-09-04 14:50:06.769132+00	t	\N
4	1	4	0	2019-09-04 14:50:06.862863+00	2019-09-04 14:50:06.862863+00	t	\N
5	1	5	0	2019-09-04 14:50:06.95916+00	2019-09-04 14:50:06.95916+00	t	\N
6	1	6	0	2019-09-04 14:50:07.089955+00	2019-09-04 14:50:07.089955+00	t	\N
7	1	7	0	2019-09-04 14:50:07.175192+00	2019-09-04 14:50:07.175192+00	t	\N
8	1	8	0	2019-09-04 14:50:07.264111+00	2019-09-04 14:50:07.264111+00	t	\N
9	1	9	0	2019-09-04 14:50:07.352442+00	2019-09-04 14:50:07.352442+00	t	\N
10	1	10	0	2019-09-04 14:50:07.443981+00	2019-09-04 14:50:07.443981+00	t	\N
11	1	11	0	2019-09-04 14:50:07.537932+00	2019-09-04 14:50:07.537932+00	t	\N
12	1	12	0	2019-09-04 14:50:07.623465+00	2019-09-04 14:50:07.623465+00	t	\N
13	1	13	0	2019-09-04 14:50:07.71003+00	2019-09-04 14:50:07.71003+00	t	\N
14	1	14	0	2019-09-04 14:50:07.798203+00	2019-09-04 14:50:07.798203+00	t	\N
15	1	15	0	2019-09-04 14:50:07.882959+00	2019-09-04 14:50:07.882959+00	t	\N
16	2	1	0	2020-12-11 21:37:30.224372+00	2020-12-11 21:37:30.224372+00	f	\N
17	2	2	10	2020-12-11 21:37:30.22988+00	2020-12-14 21:10:45.320345+00	f	\N
18	2	3	0	2020-12-11 21:37:30.234018+00	2020-12-11 21:37:30.234018+00	f	\N
19	2	4	0	2020-12-11 21:37:30.23984+00	2020-12-11 21:37:30.23984+00	f	\N
20	2	5	0	2020-12-11 21:37:30.243926+00	2020-12-11 21:37:30.243926+00	f	\N
21	2	6	0	2020-12-11 21:37:30.247934+00	2020-12-11 21:37:30.247934+00	f	\N
22	2	7	0	2020-12-11 21:37:30.253946+00	2020-12-11 21:37:30.253946+00	f	\N
23	2	8	0	2020-12-11 21:37:30.260088+00	2020-12-11 21:37:30.260088+00	f	\N
24	2	9	0	2020-12-11 21:37:30.264723+00	2020-12-11 21:37:30.264723+00	f	\N
25	2	10	0	2020-12-11 21:37:30.268617+00	2020-12-11 21:37:30.268617+00	f	\N
26	2	11	0	2020-12-11 21:37:30.272798+00	2020-12-11 21:37:30.272798+00	f	\N
27	2	12	0	2020-12-11 21:37:30.276889+00	2020-12-11 21:37:30.276889+00	f	\N
28	2	13	0	2020-12-11 21:37:30.280486+00	2020-12-11 21:37:30.280486+00	f	\N
29	2	14	0	2020-12-11 21:37:30.284097+00	2020-12-11 21:37:30.284097+00	f	\N
30	2	15	0	2020-12-11 21:37:30.287982+00	2020-12-11 21:37:30.287982+00	f	\N
\.


--
-- Data for Name: spree_stock_locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_stock_locations (id, name, created_at, updated_at, "default", address1, address2, city, state_id, state_name, country_id, zipcode, phone, active, backorderable_default, propagate_all_variants, admin_name) FROM stdin;
1	europe	2019-09-04 14:49:11.259277+00	2020-12-11 21:37:38.536099+00	t				\N	\N	75			t	t	t
2	apac	2020-12-11 21:37:30.213455+00	2020-12-11 21:37:30.213455+00	f				\N	\N	13			t	f	t
\.


--
-- Data for Name: spree_stock_movements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_stock_movements (id, stock_item_id, quantity, action, created_at, updated_at, originator_type, originator_id) FROM stdin;
1	2	1	\N	2020-12-14 21:10:28.755857+00	2020-12-14 21:10:28.755857+00	\N	\N
2	17	10	\N	2020-12-14 21:10:45.310465+00	2020-12-14 21:10:45.310465+00	\N	\N
\.


--
-- Data for Name: spree_stock_transfers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_stock_transfers (id, type, reference, source_location_id, destination_location_id, created_at, updated_at, number) FROM stdin;
\.


--
-- Data for Name: spree_store_credit_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_store_credit_categories (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_store_credit_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_store_credit_events (id, store_credit_id, action, amount, authorization_code, user_total_amount, originator_id, originator_type, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_store_credit_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_store_credit_types (id, name, priority, created_at, updated_at) FROM stdin;
1	Expiring	1	2019-09-04 14:49:14.741034+00	2019-09-04 14:49:14.741034+00
2	Non-expiring	2	2019-09-04 14:49:14.74368+00	2019-09-04 14:49:14.74368+00
\.


--
-- Data for Name: spree_store_credits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_store_credits (id, user_id, category_id, created_by_id, amount, amount_used, memo, deleted_at, currency, amount_authorized, originator_id, originator_type, type_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_stores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_stores (id, name, url, meta_description, meta_keywords, seo_title, mail_from_address, default_currency, code, "default", created_at, updated_at) FROM stdin;
1	storedog	demo.spreecommerce.org	\N	\N	\N	spree@example.com	\N	spree	t	2019-09-04 14:49:13.102918+00	2019-09-04 14:49:13.102918+00
\.


--
-- Data for Name: spree_taggings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_taggings (id, tag_id, taggable_type, taggable_id, tagger_type, tagger_id, context, created_at) FROM stdin;
\.


--
-- Data for Name: spree_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_tags (id, name, taggings_count) FROM stdin;
\.


--
-- Data for Name: spree_tax_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_tax_categories (id, name, description, is_default, deleted_at, created_at, updated_at, tax_code) FROM stdin;
1	Clothing	\N	f	\N	2019-09-04 14:50:06.133687+00	2019-09-04 14:50:06.133687+00	\N
2	Food	\N	f	\N	2019-09-04 14:50:06.143608+00	2019-09-04 14:50:06.143608+00	\N
\.


--
-- Data for Name: spree_tax_rates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_tax_rates (id, amount, zone_id, tax_category_id, included_in_price, created_at, updated_at, name, show_rate_in_label, deleted_at) FROM stdin;
1	0.05000	2	1	f	2019-09-04 14:50:06.188449+00	2019-09-04 14:50:06.188449+00	North America	t	\N
\.


--
-- Data for Name: spree_taxonomies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_taxonomies (id, name, created_at, updated_at, "position") FROM stdin;
1	Categories	2019-09-04 14:50:07.962706+00	2020-12-14 21:11:37.174808+00	1
2	Brands	2019-09-04 14:50:08.030393+00	2019-09-04 14:50:08.071473+00	2
\.


--
-- Data for Name: spree_taxons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_taxons (id, parent_id, "position", name, permalink, taxonomy_id, lft, rgt, description, created_at, updated_at, meta_title, meta_description, meta_keywords, depth) FROM stdin;
1	\N	0	Categories	categories	1	1	12	\N	2019-09-04 14:50:07.992334+00	2020-12-14 21:11:37.173098+00	\N	\N	\N	0
2	\N	0	Brands	brands	2	13	14	\N	2019-09-04 14:50:08.038834+00	2019-09-04 14:50:08.45957+00	\N	\N	\N	0
3	1	0	Bags	bags	1	2	3	\N	2019-09-04 14:50:08.116195+00	2020-12-14 21:11:37.173098+00	\N	\N	\N	1
4	1	0	Mugs	mugs	1	4	5	\N	2019-09-04 14:50:08.217978+00	2020-12-11 21:37:30.372398+00	\N	\N	\N	1
5	1	0	Clothing	clothing	1	6	11	\N	2019-09-04 14:50:08.309879+00	2020-12-11 21:37:30.324266+00	\N	\N	\N	1
6	5	0	Shirts	shirts	1	7	8	\N	2019-09-04 14:50:08.354844+00	2020-12-11 21:37:30.324266+00	\N	\N	\N	2
7	5	0	T-Shirts	t-shirts	1	9	10	\N	2019-09-04 14:50:08.436927+00	2019-09-04 14:50:08.45957+00	\N	\N	\N	2
\.


--
-- Data for Name: spree_trackers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_trackers (id, analytics_id, active, created_at, updated_at, engine) FROM stdin;
\.


--
-- Data for Name: spree_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_users (id, encrypted_password, password_salt, email, remember_token, persistence_token, reset_password_token, perishable_token, sign_in_count, failed_attempts, last_request_at, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, login, ship_address_id, bill_address_id, authentication_token, unlock_token, locked_at, reset_password_sent_at, created_at, updated_at, spree_api_key, remember_created_at, deleted_at, confirmation_token, confirmed_at, confirmation_sent_at) FROM stdin;
1	501aea7cbee2b629ba36ea1281814bc40a78670aed2ebdffc470e1e851261923e86829a04d84d3603641141cfd8d8a46fba73b32ecbee5611caaab43e3d5cdbb	PFVRzux6qoy93HyMezrU	spree@example.com	\N	\N	\N	\N	1	0	\N	2020-12-11 21:14:39.483477+00	2020-12-11 21:14:39.483477+00	172.15.7.5	172.15.7.5	spree@example.com	\N	\N	\N	\N	\N	\N	2019-09-04 14:50:02.424847+00	2020-12-11 21:14:39.484304+00	5b94d0f875a12339eafcac675691f10f50ad0f44c9ea9743	\N	\N	\N	\N	\N
\.


--
-- Data for Name: spree_variants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, discontinue_on, created_at) FROM stdin;
1		0.00	\N	\N	\N	\N	t	1	\N	1	AUD	t	\N	2020-12-11 21:37:30.226664+00	\N	2019-09-04 14:50:06.438312+00
2		0.00	\N	\N	\N	\N	t	2	\N	1	AUD	t	\N	2020-12-14 21:11:37.16611+00	\N	2019-09-04 14:50:06.650202+00
3		0.00	\N	\N	\N	\N	t	3	\N	1	AUD	t	\N	2020-12-11 21:37:30.235144+00	\N	2019-09-04 14:50:06.759113+00
4		0.00	\N	\N	\N	\N	t	4	\N	1	AUD	t	\N	2020-12-11 21:37:30.241087+00	\N	2019-09-04 14:50:06.853023+00
5		0.00	\N	\N	\N	\N	t	5	\N	1	AUD	t	\N	2020-12-11 21:37:30.24513+00	\N	2019-09-04 14:50:06.947991+00
6		0.00	\N	\N	\N	\N	t	6	\N	1	AUD	t	\N	2020-12-11 21:37:30.249344+00	\N	2019-09-04 14:50:07.080366+00
7		0.00	\N	\N	\N	\N	t	7	\N	1	AUD	t	\N	2020-12-11 21:37:30.255378+00	\N	2019-09-04 14:50:07.166394+00
8		0.00	\N	\N	\N	\N	t	8	\N	1	AUD	t	\N	2020-12-11 21:37:30.261455+00	\N	2019-09-04 14:50:07.255504+00
9		0.00	\N	\N	\N	\N	t	9	\N	1	AUD	t	\N	2020-12-11 21:37:30.265894+00	\N	2019-09-04 14:50:07.343656+00
10		0.00	\N	\N	\N	\N	t	10	\N	1	AUD	t	\N	2020-12-11 21:37:30.270148+00	\N	2019-09-04 14:50:07.434728+00
11		0.00	\N	\N	\N	\N	t	11	\N	1	AUD	t	\N	2020-12-11 21:37:30.274191+00	\N	2019-09-04 14:50:07.529086+00
12		0.00	\N	\N	\N	\N	t	12	\N	1	AUD	t	\N	2020-12-11 21:37:30.278162+00	\N	2019-09-04 14:50:07.614982+00
13		0.00	\N	\N	\N	\N	t	13	\N	1	AUD	t	\N	2020-12-11 21:37:30.28172+00	\N	2019-09-04 14:50:07.700741+00
14		0.00	\N	\N	\N	\N	t	14	\N	1	AUD	t	\N	2020-12-11 21:37:30.285447+00	\N	2019-09-04 14:50:07.788767+00
15		0.00	\N	\N	\N	\N	t	15	\N	1	AUD	t	\N	2020-12-11 21:37:30.28985+00	\N	2019-09-04 14:50:07.873741+00
\.


--
-- Data for Name: spree_zone_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_zone_members (id, zoneable_type, zoneable_id, zone_id, created_at, updated_at) FROM stdin;
1	Spree::Country	179	1	2019-09-04 14:50:01.028547+00	2019-09-04 14:50:01.028547+00
2	Spree::Country	70	1	2019-09-04 14:50:01.040923+00	2019-09-04 14:50:01.040923+00
3	Spree::Country	184	1	2019-09-04 14:50:01.054197+00	2019-09-04 14:50:01.054197+00
4	Spree::Country	189	1	2019-09-04 14:50:01.06732+00	2019-09-04 14:50:01.06732+00
5	Spree::Country	57	1	2019-09-04 14:50:01.079214+00	2019-09-04 14:50:01.079214+00
6	Spree::Country	75	1	2019-09-04 14:50:01.090753+00	2019-09-04 14:50:01.090753+00
7	Spree::Country	202	1	2019-09-04 14:50:01.101481+00	2019-09-04 14:50:01.101481+00
8	Spree::Country	100	1	2019-09-04 14:50:01.11354+00	2019-09-04 14:50:01.11354+00
9	Spree::Country	200	1	2019-09-04 14:50:01.125107+00	2019-09-04 14:50:01.125107+00
10	Spree::Country	102	1	2019-09-04 14:50:01.136313+00	2019-09-04 14:50:01.136313+00
11	Spree::Country	12	1	2019-09-04 14:50:01.150806+00	2019-09-04 14:50:01.150806+00
12	Spree::Country	68	1	2019-09-04 14:50:01.163291+00	2019-09-04 14:50:01.163291+00
13	Spree::Country	110	1	2019-09-04 14:50:01.187986+00	2019-09-04 14:50:01.187986+00
14	Spree::Country	20	1	2019-09-04 14:50:01.199549+00	2019-09-04 14:50:01.199549+00
15	Spree::Country	197	1	2019-09-04 14:50:01.211523+00	2019-09-04 14:50:01.211523+00
16	Spree::Country	135	1	2019-09-04 14:50:01.223418+00	2019-09-04 14:50:01.223418+00
17	Spree::Country	22	1	2019-09-04 14:50:01.235708+00	2019-09-04 14:50:01.235708+00
18	Spree::Country	77	1	2019-09-04 14:50:01.260136+00	2019-09-04 14:50:01.260136+00
19	Spree::Country	133	1	2019-09-04 14:50:01.271532+00	2019-09-04 14:50:01.271532+00
20	Spree::Country	55	1	2019-09-04 14:50:01.284092+00	2019-09-04 14:50:01.284092+00
21	Spree::Country	134	1	2019-09-04 14:50:01.295303+00	2019-09-04 14:50:01.295303+00
22	Spree::Country	153	1	2019-09-04 14:50:01.310015+00	2019-09-04 14:50:01.310015+00
23	Spree::Country	59	1	2019-09-04 14:50:01.321603+00	2019-09-04 14:50:01.321603+00
24	Spree::Country	166	1	2019-09-04 14:50:01.332643+00	2019-09-04 14:50:01.332643+00
25	Spree::Country	64	1	2019-09-04 14:50:01.342966+00	2019-09-04 14:50:01.342966+00
26	Spree::Country	98	1	2019-09-04 14:50:01.35675+00	2019-09-04 14:50:01.35675+00
27	Spree::Country	56	1	2019-09-04 14:50:01.368236+00	2019-09-04 14:50:01.368236+00
28	Spree::Country	89	1	2019-09-04 14:50:01.379883+00	2019-09-04 14:50:01.379883+00
29	Spree::Country	233	2	2019-09-04 14:50:01.392275+00	2019-09-04 14:50:01.392275+00
30	Spree::Country	38	2	2019-09-04 14:50:01.409657+00	2019-09-04 14:50:01.409657+00
31	Spree::Country	23	4	2019-09-04 14:50:01.42043+00	2019-09-04 14:50:01.42043+00
32	Spree::Country	55	4	2019-09-04 14:50:01.431525+00	2019-09-04 14:50:01.431525+00
33	Spree::Country	65	4	2019-09-04 14:50:01.442168+00	2019-09-04 14:50:01.442168+00
34	Spree::Country	108	4	2019-09-04 14:50:01.453648+00	2019-09-04 14:50:01.453648+00
35	Spree::Country	107	4	2019-09-04 14:50:01.464343+00	2019-09-04 14:50:01.464343+00
36	Spree::Country	103	4	2019-09-04 14:50:01.474335+00	2019-09-04 14:50:01.474335+00
37	Spree::Country	113	4	2019-09-04 14:50:01.484897+00	2019-09-04 14:50:01.484897+00
38	Spree::Country	123	4	2019-09-04 14:50:01.496328+00	2019-09-04 14:50:01.496328+00
39	Spree::Country	127	4	2019-09-04 14:50:01.506307+00	2019-09-04 14:50:01.506307+00
40	Spree::Country	172	4	2019-09-04 14:50:01.516667+00	2019-09-04 14:50:01.516667+00
41	Spree::Country	187	4	2019-09-04 14:50:01.527274+00	2019-09-04 14:50:01.527274+00
42	Spree::Country	193	4	2019-09-04 14:50:01.537612+00	2019-09-04 14:50:01.537612+00
43	Spree::Country	212	4	2019-09-04 14:50:01.547649+00	2019-09-04 14:50:01.547649+00
44	Spree::Country	225	4	2019-09-04 14:50:01.566875+00	2019-09-04 14:50:01.566875+00
45	Spree::Country	2	4	2019-09-04 14:50:01.576957+00	2019-09-04 14:50:01.576957+00
46	Spree::Country	245	4	2019-09-04 14:50:01.588066+00	2019-09-04 14:50:01.588066+00
47	Spree::Country	3	5	2019-09-04 14:50:01.598948+00	2019-09-04 14:50:01.598948+00
48	Spree::Country	7	5	2019-09-04 14:50:01.60943+00	2019-09-04 14:50:01.60943+00
49	Spree::Country	16	5	2019-09-04 14:50:01.619751+00	2019-09-04 14:50:01.619751+00
50	Spree::Country	23	5	2019-09-04 14:50:01.630059+00	2019-09-04 14:50:01.630059+00
51	Spree::Country	19	5	2019-09-04 14:50:01.639819+00	2019-09-04 14:50:01.639819+00
52	Spree::Country	33	5	2019-09-04 14:50:01.649785+00	2019-09-04 14:50:01.649785+00
53	Spree::Country	28	5	2019-09-04 14:50:01.662302+00	2019-09-04 14:50:01.662302+00
54	Spree::Country	117	5	2019-09-04 14:50:01.672195+00	2019-09-04 14:50:01.672195+00
55	Spree::Country	48	5	2019-09-04 14:50:01.682433+00	2019-09-04 14:50:01.682433+00
56	Spree::Country	54	5	2019-09-04 14:50:01.694626+00	2019-09-04 14:50:01.694626+00
57	Spree::Country	39	5	2019-09-04 14:50:01.705314+00	2019-09-04 14:50:01.705314+00
58	Spree::Country	106	5	2019-09-04 14:50:01.715524+00	2019-09-04 14:50:01.715524+00
59	Spree::Country	79	5	2019-09-04 14:50:01.725743+00	2019-09-04 14:50:01.725743+00
60	Spree::Country	95	5	2019-09-04 14:50:01.735603+00	2019-09-04 14:50:01.735603+00
61	Spree::Country	105	5	2019-09-04 14:50:01.745493+00	2019-09-04 14:50:01.745493+00
62	Spree::Country	101	5	2019-09-04 14:50:01.767626+00	2019-09-04 14:50:01.767626+00
63	Spree::Country	108	5	2019-09-04 14:50:01.778016+00	2019-09-04 14:50:01.778016+00
64	Spree::Country	107	5	2019-09-04 14:50:01.788084+00	2019-09-04 14:50:01.788084+00
65	Spree::Country	103	5	2019-09-04 14:50:01.798779+00	2019-09-04 14:50:01.798779+00
66	Spree::Country	114	5	2019-09-04 14:50:01.808565+00	2019-09-04 14:50:01.808565+00
67	Spree::Country	113	5	2019-09-04 14:50:01.818809+00	2019-09-04 14:50:01.818809+00
68	Spree::Country	125	5	2019-09-04 14:50:01.829561+00	2019-09-04 14:50:01.829561+00
69	Spree::Country	123	5	2019-09-04 14:50:01.840214+00	2019-09-04 14:50:01.840214+00
70	Spree::Country	116	5	2019-09-04 14:50:01.850359+00	2019-09-04 14:50:01.850359+00
71	Spree::Country	126	5	2019-09-04 14:50:01.870825+00	2019-09-04 14:50:01.870825+00
72	Spree::Country	127	5	2019-09-04 14:50:01.883595+00	2019-09-04 14:50:01.883595+00
73	Spree::Country	148	5	2019-09-04 14:50:01.895743+00	2019-09-04 14:50:01.895743+00
74	Spree::Country	158	5	2019-09-04 14:50:01.907526+00	2019-09-04 14:50:01.907526+00
75	Spree::Country	155	5	2019-09-04 14:50:01.917842+00	2019-09-04 14:50:01.917842+00
76	Spree::Country	147	5	2019-09-04 14:50:01.927698+00	2019-09-04 14:50:01.927698+00
77	Spree::Country	146	5	2019-09-04 14:50:01.938541+00	2019-09-04 14:50:01.938541+00
78	Spree::Country	168	5	2019-09-04 14:50:01.948973+00	2019-09-04 14:50:01.948973+00
79	Spree::Country	121	5	2019-09-04 14:50:01.962741+00	2019-09-04 14:50:01.962741+00
80	Spree::Country	172	5	2019-09-04 14:50:01.973068+00	2019-09-04 14:50:01.973068+00
81	Spree::Country	178	5	2019-09-04 14:50:01.982967+00	2019-09-04 14:50:01.982967+00
82	Spree::Country	183	5	2019-09-04 14:50:01.993034+00	2019-09-04 14:50:01.993034+00
83	Spree::Country	177	5	2019-09-04 14:50:02.006088+00	2019-09-04 14:50:02.006088+00
84	Spree::Country	187	5	2019-09-04 14:50:02.016314+00	2019-09-04 14:50:02.016314+00
85	Spree::Country	193	5	2019-09-04 14:50:02.027215+00	2019-09-04 14:50:02.027215+00
86	Spree::Country	198	5	2019-09-04 14:50:02.037562+00	2019-09-04 14:50:02.037562+00
87	Spree::Country	122	5	2019-09-04 14:50:02.04898+00	2019-09-04 14:50:02.04898+00
88	Spree::Country	130	5	2019-09-04 14:50:02.059198+00	2019-09-04 14:50:02.059198+00
89	Spree::Country	212	5	2019-09-04 14:50:02.068829+00	2019-09-04 14:50:02.068829+00
90	Spree::Country	228	5	2019-09-04 14:50:02.079622+00	2019-09-04 14:50:02.079622+00
91	Spree::Country	219	5	2019-09-04 14:50:02.089042+00	2019-09-04 14:50:02.089042+00
92	Spree::Country	218	5	2019-09-04 14:50:02.098697+00	2019-09-04 14:50:02.098697+00
93	Spree::Country	225	5	2019-09-04 14:50:02.108698+00	2019-09-04 14:50:02.108698+00
94	Spree::Country	222	5	2019-09-04 14:50:02.118668+00	2019-09-04 14:50:02.118668+00
95	Spree::Country	2	5	2019-09-04 14:50:02.129334+00	2019-09-04 14:50:02.129334+00
96	Spree::Country	235	5	2019-09-04 14:50:02.139329+00	2019-09-04 14:50:02.139329+00
97	Spree::Country	241	5	2019-09-04 14:50:02.150124+00	2019-09-04 14:50:02.150124+00
98	Spree::Country	245	5	2019-09-04 14:50:02.161989+00	2019-09-04 14:50:02.161989+00
99	Spree::Country	10	3	2019-09-04 14:50:02.172566+00	2019-09-04 14:50:02.172566+00
100	Spree::Country	29	3	2019-09-04 14:50:02.1852+00	2019-09-04 14:50:02.1852+00
101	Spree::Country	31	3	2019-09-04 14:50:02.195546+00	2019-09-04 14:50:02.195546+00
102	Spree::Country	46	3	2019-09-04 14:50:02.205924+00	2019-09-04 14:50:02.205924+00
103	Spree::Country	49	3	2019-09-04 14:50:02.21648+00	2019-09-04 14:50:02.21648+00
104	Spree::Country	63	3	2019-09-04 14:50:02.227185+00	2019-09-04 14:50:02.227185+00
105	Spree::Country	72	3	2019-09-04 14:50:02.237016+00	2019-09-04 14:50:02.237016+00
106	Spree::Country	80	3	2019-09-04 14:50:02.246646+00	2019-09-04 14:50:02.246646+00
107	Spree::Country	94	3	2019-09-04 14:50:02.25703+00	2019-09-04 14:50:02.25703+00
108	Spree::Country	186	3	2019-09-04 14:50:02.26622+00	2019-09-04 14:50:02.26622+00
109	Spree::Country	174	3	2019-09-04 14:50:02.275615+00	2019-09-04 14:50:02.275615+00
110	Spree::Country	207	3	2019-09-04 14:50:02.285762+00	2019-09-04 14:50:02.285762+00
111	Spree::Country	234	3	2019-09-04 14:50:02.295976+00	2019-09-04 14:50:02.295976+00
112	Spree::Country	238	3	2019-09-04 14:50:02.305738+00	2019-09-04 14:50:02.305738+00
\.


--
-- Data for Name: spree_zones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_zones (id, name, description, default_tax, zone_members_count, created_at, updated_at, kind) FROM stdin;
1	EU_VAT	Countries that make up the EU VAT zone.	f	28	2019-09-04 14:50:00.963231+00	2019-09-04 14:50:00.963231+00	country
2	North America	USA + Canada	f	2	2019-09-04 14:50:00.980364+00	2019-09-04 14:50:00.980364+00	country
3	South America	South America	f	14	2019-09-04 14:50:00.988584+00	2019-09-04 14:50:00.988584+00	country
4	Middle East	Middle East	f	16	2019-09-04 14:50:00.996921+00	2019-09-04 14:50:00.996921+00	country
5	Asia	Asia	f	52	2019-09-04 14:50:01.00564+00	2019-09-04 14:50:01.00564+00	country
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 1, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 1, true);


--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.friendly_id_slugs_id_seq', 22, true);


--
-- Name: spree_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_addresses_id_seq', 1, true);


--
-- Name: spree_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_assets_id_seq', 1, true);


--
-- Name: spree_calculators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_calculators_id_seq', 6, true);


--
-- Name: spree_customer_returns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_customer_returns_id_seq', 1, true);


--
-- Name: spree_gateways_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_gateways_id_seq', 1, true);


--
-- Name: spree_log_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_log_entries_id_seq', 1, true);


--
-- Name: spree_oauth_access_grants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_oauth_access_grants_id_seq', 1, true);


--
-- Name: spree_oauth_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_oauth_access_tokens_id_seq', 1, true);


--
-- Name: spree_oauth_applications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_oauth_applications_id_seq', 1, true);


--
-- Name: spree_option_type_prototypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_option_type_prototypes_id_seq', 1, true);


--
-- Name: spree_option_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_option_types_id_seq', 1, true);


--
-- Name: spree_option_value_variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_option_value_variants_id_seq', 1, true);


--
-- Name: spree_option_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_option_values_id_seq', 1, true);


--
-- Name: spree_order_promotions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_order_promotions_id_seq', 1, true);


--
-- Name: spree_payment_capture_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_payment_capture_events_id_seq', 1, true);


--
-- Name: spree_product_option_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_product_option_types_id_seq', 1, true);


--
-- Name: spree_product_promotion_rules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_product_promotion_rules_id_seq', 1, true);


--
-- Name: spree_product_properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_product_properties_id_seq', 1, true);


--
-- Name: spree_products_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_products_taxons_id_seq', 10, true);


--
-- Name: spree_promotion_action_line_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_action_line_items_id_seq', 1, true);


--
-- Name: spree_promotion_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_categories_id_seq', 1, true);


--
-- Name: spree_promotion_rule_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_rule_taxons_id_seq', 1, true);


--
-- Name: spree_promotion_rule_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_rule_users_id_seq', 1, true);


--
-- Name: spree_properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_properties_id_seq', 1, true);


--
-- Name: spree_property_prototypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_property_prototypes_id_seq', 1, true);


--
-- Name: spree_prototype_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_prototype_taxons_id_seq', 1, true);


--
-- Name: spree_prototypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_prototypes_id_seq', 1, true);


--
-- Name: spree_refund_reasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_refund_reasons_id_seq', 1, true);


--
-- Name: spree_reimbursement_credits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_reimbursement_credits_id_seq', 1, true);


--
-- Name: spree_reimbursement_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_reimbursement_types_id_seq', 1, true);


--
-- Name: spree_reimbursements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_reimbursements_id_seq', 1, true);


--
-- Name: spree_return_authorization_reasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_return_authorization_reasons_id_seq', 9, true);


--
-- Name: spree_role_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_role_users_id_seq', 1, true);


--
-- Name: spree_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_roles_id_seq', 2, true);


--
-- Name: spree_shipping_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_shipping_categories_id_seq', 1, true);


--
-- Name: spree_shipping_method_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_shipping_method_categories_id_seq', 5, true);


--
-- Name: spree_shipping_method_zones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_shipping_method_zones_id_seq', 5, true);


--
-- Name: spree_state_changes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_state_changes_id_seq', 1, true);


--
-- Name: spree_states_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_states_id_seq', 3590, true);


--
-- Name: spree_store_credit_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_store_credit_categories_id_seq', 1, true);


--
-- Name: spree_store_credit_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_store_credit_events_id_seq', 1, true);


--
-- Name: spree_store_credit_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_store_credit_types_id_seq', 2, true);


--
-- Name: spree_store_credits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_store_credits_id_seq', 1, true);


--
-- Name: spree_stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_stores_id_seq', 1, true);


--
-- Name: spree_taggings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_taggings_id_seq', 1, true);


--
-- Name: spree_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_tags_id_seq', 1, true);


--
-- Name: spree_tax_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_tax_categories_id_seq', 2, true);


--
-- Name: spree_tax_rates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_tax_rates_id_seq', 1, true);


--
-- Name: spree_taxonomies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_taxonomies_id_seq', 2, true);


--
-- Name: spree_zone_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_zone_members_id_seq', 112, true);


--
-- Name: spree_zones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_zones_id_seq', 5, true);


--
-- Name: schema_migrations idx_16386_sqlite_autoindex_schema_migrations_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT idx_16386_sqlite_autoindex_schema_migrations_1 PRIMARY KEY (version);


--
-- Name: ar_internal_metadata idx_16392_sqlite_autoindex_ar_internal_metadata_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT idx_16392_sqlite_autoindex_ar_internal_metadata_1 PRIMARY KEY (key);


--
-- Name: active_storage_blobs idx_16400_active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT idx_16400_active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_attachments idx_16409_active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT idx_16409_active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: spree_addresses idx_16418_spree_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_addresses
    ADD CONSTRAINT idx_16418_spree_addresses_pkey PRIMARY KEY (id);


--
-- Name: spree_assets idx_16427_spree_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_assets
    ADD CONSTRAINT idx_16427_spree_assets_pkey PRIMARY KEY (id);


--
-- Name: spree_calculators idx_16436_spree_calculators_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_calculators
    ADD CONSTRAINT idx_16436_spree_calculators_pkey PRIMARY KEY (id);


--
-- Name: spree_gateways idx_16445_spree_gateways_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_gateways
    ADD CONSTRAINT idx_16445_spree_gateways_pkey PRIMARY KEY (id);


--
-- Name: spree_log_entries idx_16458_spree_log_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_log_entries
    ADD CONSTRAINT idx_16458_spree_log_entries_pkey PRIMARY KEY (id);


--
-- Name: spree_option_types idx_16467_spree_option_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_types
    ADD CONSTRAINT idx_16467_spree_option_types_pkey PRIMARY KEY (id);


--
-- Name: spree_option_values idx_16477_spree_option_values_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_values
    ADD CONSTRAINT idx_16477_spree_option_values_pkey PRIMARY KEY (id);


--
-- Name: spree_product_option_types idx_16486_spree_product_option_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_product_option_types
    ADD CONSTRAINT idx_16486_spree_product_option_types_pkey PRIMARY KEY (id);


--
-- Name: spree_product_properties idx_16492_spree_product_properties_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_product_properties
    ADD CONSTRAINT idx_16492_spree_product_properties_pkey PRIMARY KEY (id);


--
-- Name: spree_properties idx_16502_spree_properties_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_properties
    ADD CONSTRAINT idx_16502_spree_properties_pkey PRIMARY KEY (id);


--
-- Name: spree_prototypes idx_16511_spree_prototypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_prototypes
    ADD CONSTRAINT idx_16511_spree_prototypes_pkey PRIMARY KEY (id);


--
-- Name: spree_roles idx_16520_spree_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_roles
    ADD CONSTRAINT idx_16520_spree_roles_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_categories idx_16529_spree_shipping_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_categories
    ADD CONSTRAINT idx_16529_spree_shipping_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_state_changes idx_16538_spree_state_changes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_state_changes
    ADD CONSTRAINT idx_16538_spree_state_changes_pkey PRIMARY KEY (id);


--
-- Name: spree_states idx_16547_spree_states_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_states
    ADD CONSTRAINT idx_16547_spree_states_pkey PRIMARY KEY (id);


--
-- Name: spree_tax_categories idx_16556_spree_tax_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_categories
    ADD CONSTRAINT idx_16556_spree_tax_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_tax_rates idx_16566_spree_tax_rates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_rates
    ADD CONSTRAINT idx_16566_spree_tax_rates_pkey PRIMARY KEY (id);


--
-- Name: spree_taxonomies idx_16577_spree_taxonomies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_taxonomies
    ADD CONSTRAINT idx_16577_spree_taxonomies_pkey PRIMARY KEY (id);


--
-- Name: spree_zone_members idx_16587_spree_zone_members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_zone_members
    ADD CONSTRAINT idx_16587_spree_zone_members_pkey PRIMARY KEY (id);


--
-- Name: spree_zones idx_16596_spree_zones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_zones
    ADD CONSTRAINT idx_16596_spree_zones_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_action_line_items idx_16607_spree_promotion_action_line_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_action_line_items
    ADD CONSTRAINT idx_16607_spree_promotion_action_line_items_pkey PRIMARY KEY (id);


--
-- Name: spree_products_taxons idx_16614_spree_products_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_products_taxons
    ADD CONSTRAINT idx_16614_spree_products_taxons_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_method_categories idx_16620_spree_shipping_method_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_method_categories
    ADD CONSTRAINT idx_16620_spree_shipping_method_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_methods idx_16624_spree_shipping_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_methods
    ADD CONSTRAINT idx_16624_spree_shipping_methods_pkey PRIMARY KEY (id);


--
-- Name: spree_stock_movements idx_16630_spree_stock_movements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stock_movements
    ADD CONSTRAINT idx_16630_spree_stock_movements_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_rates idx_16637_spree_shipping_rates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_rates
    ADD CONSTRAINT idx_16637_spree_shipping_rates_pkey PRIMARY KEY (id);


--
-- Name: spree_stock_transfers idx_16642_spree_stock_transfers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stock_transfers
    ADD CONSTRAINT idx_16642_spree_stock_transfers_pkey PRIMARY KEY (id);


--
-- Name: spree_stock_items idx_16648_spree_stock_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stock_items
    ADD CONSTRAINT idx_16648_spree_stock_items_pkey PRIMARY KEY (id);


--
-- Name: spree_stock_locations idx_16653_spree_stock_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stock_locations
    ADD CONSTRAINT idx_16653_spree_stock_locations_pkey PRIMARY KEY (id);


--
-- Name: spree_promotions idx_16663_spree_promotions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotions
    ADD CONSTRAINT idx_16663_spree_promotions_pkey PRIMARY KEY (id);


--
-- Name: spree_preferences idx_16671_spree_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_preferences
    ADD CONSTRAINT idx_16671_spree_preferences_pkey PRIMARY KEY (id);


--
-- Name: spree_products idx_16677_spree_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_products
    ADD CONSTRAINT idx_16677_spree_products_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_rules idx_16685_spree_promotion_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rules
    ADD CONSTRAINT idx_16685_spree_promotion_rules_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_actions idx_16691_spree_promotion_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_actions
    ADD CONSTRAINT idx_16691_spree_promotion_actions_pkey PRIMARY KEY (id);


--
-- Name: spree_payment_capture_events idx_16699_spree_payment_capture_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_payment_capture_events
    ADD CONSTRAINT idx_16699_spree_payment_capture_events_pkey PRIMARY KEY (id);


--
-- Name: spree_stores idx_16706_spree_stores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stores
    ADD CONSTRAINT idx_16706_spree_stores_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_rule_taxons idx_16716_spree_promotion_rule_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rule_taxons
    ADD CONSTRAINT idx_16716_spree_promotion_rule_taxons_pkey PRIMARY KEY (id);


--
-- Name: spree_credit_cards idx_16720_spree_credit_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_credit_cards
    ADD CONSTRAINT idx_16720_spree_credit_cards_pkey PRIMARY KEY (id);


--
-- Name: spree_inventory_units idx_16727_spree_inventory_units_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_inventory_units
    ADD CONSTRAINT idx_16727_spree_inventory_units_pkey PRIMARY KEY (id);


--
-- Name: spree_return_authorization_reasons idx_16737_spree_return_authorization_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_return_authorization_reasons
    ADD CONSTRAINT idx_16737_spree_return_authorization_reasons_pkey PRIMARY KEY (id);


--
-- Name: spree_refund_reasons idx_16748_spree_refund_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_refund_reasons
    ADD CONSTRAINT idx_16748_spree_refund_reasons_pkey PRIMARY KEY (id);


--
-- Name: spree_return_authorizations idx_16757_spree_return_authorizations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_return_authorizations
    ADD CONSTRAINT idx_16757_spree_return_authorizations_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_categories idx_16765_spree_promotion_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_categories
    ADD CONSTRAINT idx_16765_spree_promotion_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_customer_returns idx_16774_spree_customer_returns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_customer_returns
    ADD CONSTRAINT idx_16774_spree_customer_returns_pkey PRIMARY KEY (id);


--
-- Name: friendly_id_slugs idx_16783_friendly_id_slugs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.friendly_id_slugs
    ADD CONSTRAINT idx_16783_friendly_id_slugs_pkey PRIMARY KEY (id);


--
-- Name: spree_reimbursements idx_16792_spree_reimbursements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_reimbursements
    ADD CONSTRAINT idx_16792_spree_reimbursements_pkey PRIMARY KEY (id);


--
-- Name: spree_refunds idx_16799_spree_refunds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_refunds
    ADD CONSTRAINT idx_16799_spree_refunds_pkey PRIMARY KEY (id);


--
-- Name: spree_reimbursement_types idx_16808_spree_reimbursement_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_reimbursement_types
    ADD CONSTRAINT idx_16808_spree_reimbursement_types_pkey PRIMARY KEY (id);


--
-- Name: spree_reimbursement_credits idx_16819_spree_reimbursement_credits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_reimbursement_credits
    ADD CONSTRAINT idx_16819_spree_reimbursement_credits_pkey PRIMARY KEY (id);


--
-- Name: spree_prototype_taxons idx_16829_spree_prototype_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_prototype_taxons
    ADD CONSTRAINT idx_16829_spree_prototype_taxons_pkey PRIMARY KEY (id);


--
-- Name: spree_payments idx_16833_spree_payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_payments
    ADD CONSTRAINT idx_16833_spree_payments_pkey PRIMARY KEY (id);


--
-- Name: spree_store_credits idx_16842_spree_store_credits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credits
    ADD CONSTRAINT idx_16842_spree_store_credits_pkey PRIMARY KEY (id);


--
-- Name: spree_store_credit_categories idx_16854_spree_store_credit_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_categories
    ADD CONSTRAINT idx_16854_spree_store_credit_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_store_credit_events idx_16863_spree_store_credit_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_events
    ADD CONSTRAINT idx_16863_spree_store_credit_events_pkey PRIMARY KEY (id);


--
-- Name: spree_store_credit_types idx_16873_spree_store_credit_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_types
    ADD CONSTRAINT idx_16873_spree_store_credit_types_pkey PRIMARY KEY (id);


--
-- Name: spree_adjustments idx_16880_spree_adjustments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_adjustments
    ADD CONSTRAINT idx_16880_spree_adjustments_pkey PRIMARY KEY (id);


--
-- Name: spree_line_items idx_16889_spree_line_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_line_items
    ADD CONSTRAINT idx_16889_spree_line_items_pkey PRIMARY KEY (id);


--
-- Name: spree_shipments idx_16903_spree_shipments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipments
    ADD CONSTRAINT idx_16903_spree_shipments_pkey PRIMARY KEY (id);


--
-- Name: spree_payment_methods idx_16917_spree_payment_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_payment_methods
    ADD CONSTRAINT idx_16917_spree_payment_methods_pkey PRIMARY KEY (id);


--
-- Name: spree_option_type_prototypes idx_16928_spree_option_type_prototypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_type_prototypes
    ADD CONSTRAINT idx_16928_spree_option_type_prototypes_pkey PRIMARY KEY (id);


--
-- Name: spree_option_value_variants idx_16934_spree_option_value_variants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_value_variants
    ADD CONSTRAINT idx_16934_spree_option_value_variants_pkey PRIMARY KEY (id);


--
-- Name: spree_order_promotions idx_16940_spree_order_promotions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_order_promotions
    ADD CONSTRAINT idx_16940_spree_order_promotions_pkey PRIMARY KEY (id);


--
-- Name: spree_product_promotion_rules idx_16946_spree_product_promotion_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_product_promotion_rules
    ADD CONSTRAINT idx_16946_spree_product_promotion_rules_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_rule_users idx_16952_spree_promotion_rule_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rule_users
    ADD CONSTRAINT idx_16952_spree_promotion_rule_users_pkey PRIMARY KEY (id);


--
-- Name: spree_property_prototypes idx_16958_spree_property_prototypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_property_prototypes
    ADD CONSTRAINT idx_16958_spree_property_prototypes_pkey PRIMARY KEY (id);


--
-- Name: spree_role_users idx_16964_spree_role_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_role_users
    ADD CONSTRAINT idx_16964_spree_role_users_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_method_zones idx_16970_spree_shipping_method_zones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_method_zones
    ADD CONSTRAINT idx_16970_spree_shipping_method_zones_pkey PRIMARY KEY (id);


--
-- Name: spree_tags idx_16976_spree_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tags
    ADD CONSTRAINT idx_16976_spree_tags_pkey PRIMARY KEY (id);


--
-- Name: spree_taggings idx_16986_spree_taggings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_taggings
    ADD CONSTRAINT idx_16986_spree_taggings_pkey PRIMARY KEY (id);


--
-- Name: spree_variants idx_16993_spree_variants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_variants
    ADD CONSTRAINT idx_16993_spree_variants_pkey PRIMARY KEY (id);


--
-- Name: spree_return_items idx_17007_spree_return_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_return_items
    ADD CONSTRAINT idx_17007_spree_return_items_pkey PRIMARY KEY (id);


--
-- Name: spree_trackers idx_17017_spree_trackers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_trackers
    ADD CONSTRAINT idx_17017_spree_trackers_pkey PRIMARY KEY (id);


--
-- Name: spree_taxons idx_17025_spree_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_taxons
    ADD CONSTRAINT idx_17025_spree_taxons_pkey PRIMARY KEY (id);


--
-- Name: spree_orders idx_17032_spree_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_orders
    ADD CONSTRAINT idx_17032_spree_orders_pkey PRIMARY KEY (id);


--
-- Name: spree_prices idx_17053_spree_prices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_prices
    ADD CONSTRAINT idx_17053_spree_prices_pkey PRIMARY KEY (id);


--
-- Name: spree_countries idx_17060_spree_countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_countries
    ADD CONSTRAINT idx_17060_spree_countries_pkey PRIMARY KEY (id);


--
-- Name: spree_oauth_applications idx_17070_spree_oauth_applications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_oauth_applications
    ADD CONSTRAINT idx_17070_spree_oauth_applications_pkey PRIMARY KEY (id);


--
-- Name: spree_oauth_access_grants idx_17081_spree_oauth_access_grants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_oauth_access_grants
    ADD CONSTRAINT idx_17081_spree_oauth_access_grants_pkey PRIMARY KEY (id);


--
-- Name: spree_oauth_access_tokens idx_17090_spree_oauth_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_oauth_access_tokens
    ADD CONSTRAINT idx_17090_spree_oauth_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: spree_users idx_17098_spree_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_users
    ADD CONSTRAINT idx_17098_spree_users_pkey PRIMARY KEY (id);


--
-- Name: idx_16400_index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16400_index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: idx_16409_index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16409_index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: idx_16409_index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16409_index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: idx_16418_index_addresses_on_firstname; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16418_index_addresses_on_firstname ON public.spree_addresses USING btree (firstname);


--
-- Name: idx_16418_index_addresses_on_lastname; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16418_index_addresses_on_lastname ON public.spree_addresses USING btree (lastname);


--
-- Name: idx_16418_index_spree_addresses_on_country_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16418_index_spree_addresses_on_country_id ON public.spree_addresses USING btree (country_id);


--
-- Name: idx_16418_index_spree_addresses_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16418_index_spree_addresses_on_deleted_at ON public.spree_addresses USING btree (deleted_at);


--
-- Name: idx_16418_index_spree_addresses_on_state_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16418_index_spree_addresses_on_state_id ON public.spree_addresses USING btree (state_id);


--
-- Name: idx_16418_index_spree_addresses_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16418_index_spree_addresses_on_user_id ON public.spree_addresses USING btree (user_id);


--
-- Name: idx_16427_index_assets_on_viewable_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16427_index_assets_on_viewable_id ON public.spree_assets USING btree (viewable_id);


--
-- Name: idx_16427_index_assets_on_viewable_type_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16427_index_assets_on_viewable_type_and_type ON public.spree_assets USING btree (viewable_type, type);


--
-- Name: idx_16427_index_spree_assets_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16427_index_spree_assets_on_position ON public.spree_assets USING btree ("position");


--
-- Name: idx_16436_index_spree_calculators_on_calculable_id_and_calculab; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16436_index_spree_calculators_on_calculable_id_and_calculab ON public.spree_calculators USING btree (calculable_id, calculable_type);


--
-- Name: idx_16436_index_spree_calculators_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16436_index_spree_calculators_on_deleted_at ON public.spree_calculators USING btree (deleted_at);


--
-- Name: idx_16436_index_spree_calculators_on_id_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16436_index_spree_calculators_on_id_and_type ON public.spree_calculators USING btree (id, type);


--
-- Name: idx_16445_index_spree_gateways_on_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16445_index_spree_gateways_on_active ON public.spree_gateways USING btree (active);


--
-- Name: idx_16445_index_spree_gateways_on_test_mode; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16445_index_spree_gateways_on_test_mode ON public.spree_gateways USING btree (test_mode);


--
-- Name: idx_16458_index_spree_log_entries_on_source_id_and_source_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16458_index_spree_log_entries_on_source_id_and_source_type ON public.spree_log_entries USING btree (source_id, source_type);


--
-- Name: idx_16467_index_spree_option_types_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16467_index_spree_option_types_on_name ON public.spree_option_types USING btree (name);


--
-- Name: idx_16467_index_spree_option_types_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16467_index_spree_option_types_on_position ON public.spree_option_types USING btree ("position");


--
-- Name: idx_16477_index_spree_option_values_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16477_index_spree_option_values_on_name ON public.spree_option_values USING btree (name);


--
-- Name: idx_16477_index_spree_option_values_on_option_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16477_index_spree_option_values_on_option_type_id ON public.spree_option_values USING btree (option_type_id);


--
-- Name: idx_16477_index_spree_option_values_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16477_index_spree_option_values_on_position ON public.spree_option_values USING btree ("position");


--
-- Name: idx_16486_index_spree_product_option_types_on_option_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16486_index_spree_product_option_types_on_option_type_id ON public.spree_product_option_types USING btree (option_type_id);


--
-- Name: idx_16486_index_spree_product_option_types_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16486_index_spree_product_option_types_on_position ON public.spree_product_option_types USING btree ("position");


--
-- Name: idx_16486_index_spree_product_option_types_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16486_index_spree_product_option_types_on_product_id ON public.spree_product_option_types USING btree (product_id);


--
-- Name: idx_16492_index_product_properties_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16492_index_product_properties_on_product_id ON public.spree_product_properties USING btree (product_id);


--
-- Name: idx_16492_index_spree_product_properties_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16492_index_spree_product_properties_on_position ON public.spree_product_properties USING btree ("position");


--
-- Name: idx_16492_index_spree_product_properties_on_property_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16492_index_spree_product_properties_on_property_id ON public.spree_product_properties USING btree (property_id);


--
-- Name: idx_16502_index_spree_properties_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16502_index_spree_properties_on_name ON public.spree_properties USING btree (name);


--
-- Name: idx_16520_index_spree_roles_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16520_index_spree_roles_on_name ON public.spree_roles USING btree (name);


--
-- Name: idx_16529_index_spree_shipping_categories_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16529_index_spree_shipping_categories_on_name ON public.spree_shipping_categories USING btree (name);


--
-- Name: idx_16538_index_spree_state_changes_on_stateful_id_and_stateful; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16538_index_spree_state_changes_on_stateful_id_and_stateful ON public.spree_state_changes USING btree (stateful_id, stateful_type);


--
-- Name: idx_16547_index_spree_states_on_country_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16547_index_spree_states_on_country_id ON public.spree_states USING btree (country_id);


--
-- Name: idx_16556_index_spree_tax_categories_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16556_index_spree_tax_categories_on_deleted_at ON public.spree_tax_categories USING btree (deleted_at);


--
-- Name: idx_16556_index_spree_tax_categories_on_is_default; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16556_index_spree_tax_categories_on_is_default ON public.spree_tax_categories USING btree (is_default);


--
-- Name: idx_16566_index_spree_tax_rates_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16566_index_spree_tax_rates_on_deleted_at ON public.spree_tax_rates USING btree (deleted_at);


--
-- Name: idx_16566_index_spree_tax_rates_on_included_in_price; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16566_index_spree_tax_rates_on_included_in_price ON public.spree_tax_rates USING btree (included_in_price);


--
-- Name: idx_16566_index_spree_tax_rates_on_show_rate_in_label; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16566_index_spree_tax_rates_on_show_rate_in_label ON public.spree_tax_rates USING btree (show_rate_in_label);


--
-- Name: idx_16566_index_spree_tax_rates_on_tax_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16566_index_spree_tax_rates_on_tax_category_id ON public.spree_tax_rates USING btree (tax_category_id);


--
-- Name: idx_16566_index_spree_tax_rates_on_zone_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16566_index_spree_tax_rates_on_zone_id ON public.spree_tax_rates USING btree (zone_id);


--
-- Name: idx_16577_index_spree_taxonomies_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16577_index_spree_taxonomies_on_position ON public.spree_taxonomies USING btree ("position");


--
-- Name: idx_16587_index_spree_zone_members_on_zone_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16587_index_spree_zone_members_on_zone_id ON public.spree_zone_members USING btree (zone_id);


--
-- Name: idx_16587_index_spree_zone_members_on_zoneable_id_and_zoneable_; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16587_index_spree_zone_members_on_zoneable_id_and_zoneable_ ON public.spree_zone_members USING btree (zoneable_id, zoneable_type);


--
-- Name: idx_16596_index_spree_zones_on_default_tax; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16596_index_spree_zones_on_default_tax ON public.spree_zones USING btree (default_tax);


--
-- Name: idx_16596_index_spree_zones_on_kind; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16596_index_spree_zones_on_kind ON public.spree_zones USING btree (kind);


--
-- Name: idx_16607_index_spree_promotion_action_line_items_on_promotion_; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16607_index_spree_promotion_action_line_items_on_promotion_ ON public.spree_promotion_action_line_items USING btree (promotion_action_id);


--
-- Name: idx_16607_index_spree_promotion_action_line_items_on_variant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16607_index_spree_promotion_action_line_items_on_variant_id ON public.spree_promotion_action_line_items USING btree (variant_id);


--
-- Name: idx_16614_index_spree_products_taxons_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16614_index_spree_products_taxons_on_position ON public.spree_products_taxons USING btree ("position");


--
-- Name: idx_16614_index_spree_products_taxons_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16614_index_spree_products_taxons_on_product_id ON public.spree_products_taxons USING btree (product_id);


--
-- Name: idx_16614_index_spree_products_taxons_on_taxon_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16614_index_spree_products_taxons_on_taxon_id ON public.spree_products_taxons USING btree (taxon_id);


--
-- Name: idx_16620_index_spree_shipping_method_categories_on_shipping_ca; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16620_index_spree_shipping_method_categories_on_shipping_ca ON public.spree_shipping_method_categories USING btree (shipping_category_id);


--
-- Name: idx_16620_index_spree_shipping_method_categories_on_shipping_me; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16620_index_spree_shipping_method_categories_on_shipping_me ON public.spree_shipping_method_categories USING btree (shipping_method_id);


--
-- Name: idx_16620_unique_spree_shipping_method_categories; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16620_unique_spree_shipping_method_categories ON public.spree_shipping_method_categories USING btree (shipping_category_id, shipping_method_id);


--
-- Name: idx_16624_index_spree_shipping_methods_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16624_index_spree_shipping_methods_on_deleted_at ON public.spree_shipping_methods USING btree (deleted_at);


--
-- Name: idx_16624_index_spree_shipping_methods_on_tax_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16624_index_spree_shipping_methods_on_tax_category_id ON public.spree_shipping_methods USING btree (tax_category_id);


--
-- Name: idx_16630_index_spree_stock_movements_on_stock_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16630_index_spree_stock_movements_on_stock_item_id ON public.spree_stock_movements USING btree (stock_item_id);


--
-- Name: idx_16630_index_stock_movements_on_originator_id_and_originator; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16630_index_stock_movements_on_originator_id_and_originator ON public.spree_stock_movements USING btree (originator_id, originator_type);


--
-- Name: idx_16637_index_spree_shipping_rates_on_selected; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16637_index_spree_shipping_rates_on_selected ON public.spree_shipping_rates USING btree (selected);


--
-- Name: idx_16637_index_spree_shipping_rates_on_shipment_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16637_index_spree_shipping_rates_on_shipment_id ON public.spree_shipping_rates USING btree (shipment_id);


--
-- Name: idx_16637_index_spree_shipping_rates_on_shipping_method_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16637_index_spree_shipping_rates_on_shipping_method_id ON public.spree_shipping_rates USING btree (shipping_method_id);


--
-- Name: idx_16637_index_spree_shipping_rates_on_tax_rate_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16637_index_spree_shipping_rates_on_tax_rate_id ON public.spree_shipping_rates USING btree (tax_rate_id);


--
-- Name: idx_16637_spree_shipping_rates_join_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16637_spree_shipping_rates_join_index ON public.spree_shipping_rates USING btree (shipment_id, shipping_method_id);


--
-- Name: idx_16642_index_spree_stock_transfers_on_destination_location_i; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16642_index_spree_stock_transfers_on_destination_location_i ON public.spree_stock_transfers USING btree (destination_location_id);


--
-- Name: idx_16642_index_spree_stock_transfers_on_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16642_index_spree_stock_transfers_on_number ON public.spree_stock_transfers USING btree (number);


--
-- Name: idx_16642_index_spree_stock_transfers_on_source_location_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16642_index_spree_stock_transfers_on_source_location_id ON public.spree_stock_transfers USING btree (source_location_id);


--
-- Name: idx_16648_index_spree_stock_items_on_backorderable; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16648_index_spree_stock_items_on_backorderable ON public.spree_stock_items USING btree (backorderable);


--
-- Name: idx_16648_index_spree_stock_items_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16648_index_spree_stock_items_on_deleted_at ON public.spree_stock_items USING btree (deleted_at);


--
-- Name: idx_16648_index_spree_stock_items_on_stock_location_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16648_index_spree_stock_items_on_stock_location_id ON public.spree_stock_items USING btree (stock_location_id);


--
-- Name: idx_16648_index_spree_stock_items_on_variant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16648_index_spree_stock_items_on_variant_id ON public.spree_stock_items USING btree (variant_id);


--
-- Name: idx_16648_stock_item_by_loc_and_var_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16648_stock_item_by_loc_and_var_id ON public.spree_stock_items USING btree (stock_location_id, variant_id);


--
-- Name: idx_16653_index_spree_stock_locations_on_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16653_index_spree_stock_locations_on_active ON public.spree_stock_locations USING btree (active);


--
-- Name: idx_16653_index_spree_stock_locations_on_backorderable_default; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16653_index_spree_stock_locations_on_backorderable_default ON public.spree_stock_locations USING btree (backorderable_default);


--
-- Name: idx_16653_index_spree_stock_locations_on_country_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16653_index_spree_stock_locations_on_country_id ON public.spree_stock_locations USING btree (country_id);


--
-- Name: idx_16653_index_spree_stock_locations_on_propagate_all_variants; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16653_index_spree_stock_locations_on_propagate_all_variants ON public.spree_stock_locations USING btree (propagate_all_variants);


--
-- Name: idx_16653_index_spree_stock_locations_on_state_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16653_index_spree_stock_locations_on_state_id ON public.spree_stock_locations USING btree (state_id);


--
-- Name: idx_16663_index_spree_promotions_on_advertise; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16663_index_spree_promotions_on_advertise ON public.spree_promotions USING btree (advertise);


--
-- Name: idx_16663_index_spree_promotions_on_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16663_index_spree_promotions_on_code ON public.spree_promotions USING btree (code);


--
-- Name: idx_16663_index_spree_promotions_on_expires_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16663_index_spree_promotions_on_expires_at ON public.spree_promotions USING btree (expires_at);


--
-- Name: idx_16663_index_spree_promotions_on_id_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16663_index_spree_promotions_on_id_and_type ON public.spree_promotions USING btree (id, type);


--
-- Name: idx_16663_index_spree_promotions_on_promotion_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16663_index_spree_promotions_on_promotion_category_id ON public.spree_promotions USING btree (promotion_category_id);


--
-- Name: idx_16663_index_spree_promotions_on_starts_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16663_index_spree_promotions_on_starts_at ON public.spree_promotions USING btree (starts_at);


--
-- Name: idx_16671_index_spree_preferences_on_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16671_index_spree_preferences_on_key ON public.spree_preferences USING btree (key);


--
-- Name: idx_16677_index_spree_products_on_available_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16677_index_spree_products_on_available_on ON public.spree_products USING btree (available_on);


--
-- Name: idx_16677_index_spree_products_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16677_index_spree_products_on_deleted_at ON public.spree_products USING btree (deleted_at);


--
-- Name: idx_16677_index_spree_products_on_discontinue_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16677_index_spree_products_on_discontinue_on ON public.spree_products USING btree (discontinue_on);


--
-- Name: idx_16677_index_spree_products_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16677_index_spree_products_on_name ON public.spree_products USING btree (name);


--
-- Name: idx_16677_index_spree_products_on_shipping_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16677_index_spree_products_on_shipping_category_id ON public.spree_products USING btree (shipping_category_id);


--
-- Name: idx_16677_index_spree_products_on_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16677_index_spree_products_on_slug ON public.spree_products USING btree (slug);


--
-- Name: idx_16677_index_spree_products_on_tax_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16677_index_spree_products_on_tax_category_id ON public.spree_products USING btree (tax_category_id);


--
-- Name: idx_16685_index_promotion_rules_on_product_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16685_index_promotion_rules_on_product_group_id ON public.spree_promotion_rules USING btree (product_group_id);


--
-- Name: idx_16685_index_promotion_rules_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16685_index_promotion_rules_on_user_id ON public.spree_promotion_rules USING btree (user_id);


--
-- Name: idx_16685_index_spree_promotion_rules_on_promotion_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16685_index_spree_promotion_rules_on_promotion_id ON public.spree_promotion_rules USING btree (promotion_id);


--
-- Name: idx_16691_index_spree_promotion_actions_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16691_index_spree_promotion_actions_on_deleted_at ON public.spree_promotion_actions USING btree (deleted_at);


--
-- Name: idx_16691_index_spree_promotion_actions_on_id_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16691_index_spree_promotion_actions_on_id_and_type ON public.spree_promotion_actions USING btree (id, type);


--
-- Name: idx_16691_index_spree_promotion_actions_on_promotion_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16691_index_spree_promotion_actions_on_promotion_id ON public.spree_promotion_actions USING btree (promotion_id);


--
-- Name: idx_16699_index_spree_payment_capture_events_on_payment_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16699_index_spree_payment_capture_events_on_payment_id ON public.spree_payment_capture_events USING btree (payment_id);


--
-- Name: idx_16706_index_spree_stores_on_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16706_index_spree_stores_on_code ON public.spree_stores USING btree (code);


--
-- Name: idx_16706_index_spree_stores_on_default; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16706_index_spree_stores_on_default ON public.spree_stores USING btree ("default");


--
-- Name: idx_16706_index_spree_stores_on_url; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16706_index_spree_stores_on_url ON public.spree_stores USING btree (url);


--
-- Name: idx_16716_index_spree_promotion_rule_taxons_on_promotion_rule_i; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16716_index_spree_promotion_rule_taxons_on_promotion_rule_i ON public.spree_promotion_rule_taxons USING btree (promotion_rule_id);


--
-- Name: idx_16716_index_spree_promotion_rule_taxons_on_taxon_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16716_index_spree_promotion_rule_taxons_on_taxon_id ON public.spree_promotion_rule_taxons USING btree (taxon_id);


--
-- Name: idx_16720_index_spree_credit_cards_on_address_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16720_index_spree_credit_cards_on_address_id ON public.spree_credit_cards USING btree (address_id);


--
-- Name: idx_16720_index_spree_credit_cards_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16720_index_spree_credit_cards_on_deleted_at ON public.spree_credit_cards USING btree (deleted_at);


--
-- Name: idx_16720_index_spree_credit_cards_on_payment_method_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16720_index_spree_credit_cards_on_payment_method_id ON public.spree_credit_cards USING btree (payment_method_id);


--
-- Name: idx_16720_index_spree_credit_cards_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16720_index_spree_credit_cards_on_user_id ON public.spree_credit_cards USING btree (user_id);


--
-- Name: idx_16727_index_inventory_units_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16727_index_inventory_units_on_order_id ON public.spree_inventory_units USING btree (order_id);


--
-- Name: idx_16727_index_inventory_units_on_shipment_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16727_index_inventory_units_on_shipment_id ON public.spree_inventory_units USING btree (shipment_id);


--
-- Name: idx_16727_index_inventory_units_on_variant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16727_index_inventory_units_on_variant_id ON public.spree_inventory_units USING btree (variant_id);


--
-- Name: idx_16727_index_spree_inventory_units_on_line_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16727_index_spree_inventory_units_on_line_item_id ON public.spree_inventory_units USING btree (line_item_id);


--
-- Name: idx_16727_index_spree_inventory_units_on_original_return_item_i; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16727_index_spree_inventory_units_on_original_return_item_i ON public.spree_inventory_units USING btree (original_return_item_id);


--
-- Name: idx_16737_index_spree_return_authorization_reasons_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16737_index_spree_return_authorization_reasons_on_name ON public.spree_return_authorization_reasons USING btree (name);


--
-- Name: idx_16748_index_spree_refund_reasons_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16748_index_spree_refund_reasons_on_name ON public.spree_refund_reasons USING btree (name);


--
-- Name: idx_16757_index_return_authorizations_on_return_authorization_r; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16757_index_return_authorizations_on_return_authorization_r ON public.spree_return_authorizations USING btree (return_authorization_reason_id);


--
-- Name: idx_16757_index_spree_return_authorizations_on_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16757_index_spree_return_authorizations_on_number ON public.spree_return_authorizations USING btree (number);


--
-- Name: idx_16757_index_spree_return_authorizations_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16757_index_spree_return_authorizations_on_order_id ON public.spree_return_authorizations USING btree (order_id);


--
-- Name: idx_16757_index_spree_return_authorizations_on_stock_location_i; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16757_index_spree_return_authorizations_on_stock_location_i ON public.spree_return_authorizations USING btree (stock_location_id);


--
-- Name: idx_16774_index_spree_customer_returns_on_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16774_index_spree_customer_returns_on_number ON public.spree_customer_returns USING btree (number);


--
-- Name: idx_16774_index_spree_customer_returns_on_stock_location_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16774_index_spree_customer_returns_on_stock_location_id ON public.spree_customer_returns USING btree (stock_location_id);


--
-- Name: idx_16783_index_friendly_id_slugs_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16783_index_friendly_id_slugs_on_deleted_at ON public.friendly_id_slugs USING btree (deleted_at);


--
-- Name: idx_16783_index_friendly_id_slugs_on_slug_and_sluggable_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16783_index_friendly_id_slugs_on_slug_and_sluggable_type ON public.friendly_id_slugs USING btree (slug, sluggable_type);


--
-- Name: idx_16783_index_friendly_id_slugs_on_slug_and_sluggable_type_an; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16783_index_friendly_id_slugs_on_slug_and_sluggable_type_an ON public.friendly_id_slugs USING btree (slug, sluggable_type, scope);


--
-- Name: idx_16783_index_friendly_id_slugs_on_sluggable_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16783_index_friendly_id_slugs_on_sluggable_id ON public.friendly_id_slugs USING btree (sluggable_id);


--
-- Name: idx_16783_index_friendly_id_slugs_on_sluggable_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16783_index_friendly_id_slugs_on_sluggable_type ON public.friendly_id_slugs USING btree (sluggable_type);


--
-- Name: idx_16792_index_spree_reimbursements_on_customer_return_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16792_index_spree_reimbursements_on_customer_return_id ON public.spree_reimbursements USING btree (customer_return_id);


--
-- Name: idx_16792_index_spree_reimbursements_on_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16792_index_spree_reimbursements_on_number ON public.spree_reimbursements USING btree (number);


--
-- Name: idx_16792_index_spree_reimbursements_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16792_index_spree_reimbursements_on_order_id ON public.spree_reimbursements USING btree (order_id);


--
-- Name: idx_16799_index_refunds_on_refund_reason_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16799_index_refunds_on_refund_reason_id ON public.spree_refunds USING btree (refund_reason_id);


--
-- Name: idx_16799_index_spree_refunds_on_payment_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16799_index_spree_refunds_on_payment_id ON public.spree_refunds USING btree (payment_id);


--
-- Name: idx_16799_index_spree_refunds_on_reimbursement_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16799_index_spree_refunds_on_reimbursement_id ON public.spree_refunds USING btree (reimbursement_id);


--
-- Name: idx_16808_index_spree_reimbursement_types_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16808_index_spree_reimbursement_types_on_name ON public.spree_reimbursement_types USING btree (name);


--
-- Name: idx_16808_index_spree_reimbursement_types_on_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16808_index_spree_reimbursement_types_on_type ON public.spree_reimbursement_types USING btree (type);


--
-- Name: idx_16819_index_reimbursement_credits_on_creditable_id_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16819_index_reimbursement_credits_on_creditable_id_and_type ON public.spree_reimbursement_credits USING btree (creditable_id, creditable_type);


--
-- Name: idx_16819_index_spree_reimbursement_credits_on_reimbursement_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16819_index_spree_reimbursement_credits_on_reimbursement_id ON public.spree_reimbursement_credits USING btree (reimbursement_id);


--
-- Name: idx_16829_index_spree_prototype_taxons_on_prototype_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16829_index_spree_prototype_taxons_on_prototype_id ON public.spree_prototype_taxons USING btree (prototype_id);


--
-- Name: idx_16829_index_spree_prototype_taxons_on_prototype_id_and_taxo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16829_index_spree_prototype_taxons_on_prototype_id_and_taxo ON public.spree_prototype_taxons USING btree (prototype_id, taxon_id);


--
-- Name: idx_16829_index_spree_prototype_taxons_on_taxon_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16829_index_spree_prototype_taxons_on_taxon_id ON public.spree_prototype_taxons USING btree (taxon_id);


--
-- Name: idx_16833_index_spree_payments_on_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16833_index_spree_payments_on_number ON public.spree_payments USING btree (number);


--
-- Name: idx_16833_index_spree_payments_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16833_index_spree_payments_on_order_id ON public.spree_payments USING btree (order_id);


--
-- Name: idx_16833_index_spree_payments_on_payment_method_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16833_index_spree_payments_on_payment_method_id ON public.spree_payments USING btree (payment_method_id);


--
-- Name: idx_16833_index_spree_payments_on_source_id_and_source_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16833_index_spree_payments_on_source_id_and_source_type ON public.spree_payments USING btree (source_id, source_type);


--
-- Name: idx_16842_index_spree_store_credits_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16842_index_spree_store_credits_on_deleted_at ON public.spree_store_credits USING btree (deleted_at);


--
-- Name: idx_16842_index_spree_store_credits_on_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16842_index_spree_store_credits_on_type_id ON public.spree_store_credits USING btree (type_id);


--
-- Name: idx_16842_index_spree_store_credits_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16842_index_spree_store_credits_on_user_id ON public.spree_store_credits USING btree (user_id);


--
-- Name: idx_16842_spree_store_credits_originator; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16842_spree_store_credits_originator ON public.spree_store_credits USING btree (originator_id, originator_type);


--
-- Name: idx_16863_index_spree_store_credit_events_on_store_credit_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16863_index_spree_store_credit_events_on_store_credit_id ON public.spree_store_credit_events USING btree (store_credit_id);


--
-- Name: idx_16863_spree_store_credit_events_originator; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16863_spree_store_credit_events_originator ON public.spree_store_credit_events USING btree (originator_id, originator_type);


--
-- Name: idx_16873_index_spree_store_credit_types_on_priority; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16873_index_spree_store_credit_types_on_priority ON public.spree_store_credit_types USING btree (priority);


--
-- Name: idx_16880_index_spree_adjustments_on_adjustable_id_and_adjustab; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16880_index_spree_adjustments_on_adjustable_id_and_adjustab ON public.spree_adjustments USING btree (adjustable_id, adjustable_type);


--
-- Name: idx_16880_index_spree_adjustments_on_eligible; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16880_index_spree_adjustments_on_eligible ON public.spree_adjustments USING btree (eligible);


--
-- Name: idx_16880_index_spree_adjustments_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16880_index_spree_adjustments_on_order_id ON public.spree_adjustments USING btree (order_id);


--
-- Name: idx_16880_index_spree_adjustments_on_source_id_and_source_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16880_index_spree_adjustments_on_source_id_and_source_type ON public.spree_adjustments USING btree (source_id, source_type);


--
-- Name: idx_16889_index_spree_line_items_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16889_index_spree_line_items_on_order_id ON public.spree_line_items USING btree (order_id);


--
-- Name: idx_16889_index_spree_line_items_on_tax_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16889_index_spree_line_items_on_tax_category_id ON public.spree_line_items USING btree (tax_category_id);


--
-- Name: idx_16889_index_spree_line_items_on_variant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16889_index_spree_line_items_on_variant_id ON public.spree_line_items USING btree (variant_id);


--
-- Name: idx_16903_index_spree_shipments_on_address_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16903_index_spree_shipments_on_address_id ON public.spree_shipments USING btree (address_id);


--
-- Name: idx_16903_index_spree_shipments_on_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16903_index_spree_shipments_on_number ON public.spree_shipments USING btree (number);


--
-- Name: idx_16903_index_spree_shipments_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16903_index_spree_shipments_on_order_id ON public.spree_shipments USING btree (order_id);


--
-- Name: idx_16903_index_spree_shipments_on_stock_location_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16903_index_spree_shipments_on_stock_location_id ON public.spree_shipments USING btree (stock_location_id);


--
-- Name: idx_16917_index_spree_payment_methods_on_id_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16917_index_spree_payment_methods_on_id_and_type ON public.spree_payment_methods USING btree (id, type);


--
-- Name: idx_16928_index_spree_option_type_prototypes_on_option_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16928_index_spree_option_type_prototypes_on_option_type_id ON public.spree_option_type_prototypes USING btree (option_type_id);


--
-- Name: idx_16928_index_spree_option_type_prototypes_on_prototype_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16928_index_spree_option_type_prototypes_on_prototype_id ON public.spree_option_type_prototypes USING btree (prototype_id);


--
-- Name: idx_16928_spree_option_type_prototypes_prototype_id_option_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16928_spree_option_type_prototypes_prototype_id_option_type ON public.spree_option_type_prototypes USING btree (prototype_id, option_type_id);


--
-- Name: idx_16934_index_option_values_variants_on_variant_id_and_option; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16934_index_option_values_variants_on_variant_id_and_option ON public.spree_option_value_variants USING btree (variant_id, option_value_id);


--
-- Name: idx_16934_index_spree_option_value_variants_on_option_value_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16934_index_spree_option_value_variants_on_option_value_id ON public.spree_option_value_variants USING btree (option_value_id);


--
-- Name: idx_16934_index_spree_option_value_variants_on_variant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16934_index_spree_option_value_variants_on_variant_id ON public.spree_option_value_variants USING btree (variant_id);


--
-- Name: idx_16940_index_spree_order_promotions_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16940_index_spree_order_promotions_on_order_id ON public.spree_order_promotions USING btree (order_id);


--
-- Name: idx_16940_index_spree_order_promotions_on_promotion_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16940_index_spree_order_promotions_on_promotion_id ON public.spree_order_promotions USING btree (promotion_id);


--
-- Name: idx_16940_index_spree_order_promotions_on_promotion_id_and_orde; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16940_index_spree_order_promotions_on_promotion_id_and_orde ON public.spree_order_promotions USING btree (promotion_id, order_id);


--
-- Name: idx_16946_index_products_promotion_rules_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16946_index_products_promotion_rules_on_product_id ON public.spree_product_promotion_rules USING btree (product_id);


--
-- Name: idx_16946_index_products_promotion_rules_on_promotion_rule_and_; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16946_index_products_promotion_rules_on_promotion_rule_and_ ON public.spree_product_promotion_rules USING btree (promotion_rule_id, product_id);


--
-- Name: idx_16952_index_promotion_rules_users_on_promotion_rule_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16952_index_promotion_rules_users_on_promotion_rule_id ON public.spree_promotion_rule_users USING btree (promotion_rule_id);


--
-- Name: idx_16952_index_promotion_rules_users_on_user_id_and_promotion_; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16952_index_promotion_rules_users_on_user_id_and_promotion_ ON public.spree_promotion_rule_users USING btree (user_id, promotion_rule_id);


--
-- Name: idx_16958_index_property_prototypes_on_prototype_id_and_propert; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16958_index_property_prototypes_on_prototype_id_and_propert ON public.spree_property_prototypes USING btree (prototype_id, property_id);


--
-- Name: idx_16958_index_spree_property_prototypes_on_property_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16958_index_spree_property_prototypes_on_property_id ON public.spree_property_prototypes USING btree (property_id);


--
-- Name: idx_16958_index_spree_property_prototypes_on_prototype_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16958_index_spree_property_prototypes_on_prototype_id ON public.spree_property_prototypes USING btree (prototype_id);


--
-- Name: idx_16964_index_spree_role_users_on_role_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16964_index_spree_role_users_on_role_id ON public.spree_role_users USING btree (role_id);


--
-- Name: idx_16964_index_spree_role_users_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16964_index_spree_role_users_on_user_id ON public.spree_role_users USING btree (user_id);


--
-- Name: idx_16970_index_spree_shipping_method_zones_on_shipping_method_; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16970_index_spree_shipping_method_zones_on_shipping_method_ ON public.spree_shipping_method_zones USING btree (shipping_method_id);


--
-- Name: idx_16970_index_spree_shipping_method_zones_on_zone_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16970_index_spree_shipping_method_zones_on_zone_id ON public.spree_shipping_method_zones USING btree (zone_id);


--
-- Name: idx_16976_index_spree_tags_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16976_index_spree_tags_on_name ON public.spree_tags USING btree (name);


--
-- Name: idx_16986_index_spree_taggings_on_context; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16986_index_spree_taggings_on_context ON public.spree_taggings USING btree (context);


--
-- Name: idx_16986_index_spree_taggings_on_tag_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16986_index_spree_taggings_on_tag_id ON public.spree_taggings USING btree (tag_id);


--
-- Name: idx_16986_index_spree_taggings_on_taggable_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16986_index_spree_taggings_on_taggable_id ON public.spree_taggings USING btree (taggable_id);


--
-- Name: idx_16986_index_spree_taggings_on_taggable_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16986_index_spree_taggings_on_taggable_type ON public.spree_taggings USING btree (taggable_type);


--
-- Name: idx_16986_index_spree_taggings_on_tagger_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16986_index_spree_taggings_on_tagger_id ON public.spree_taggings USING btree (tagger_id);


--
-- Name: idx_16986_index_spree_taggings_on_tagger_id_and_tagger_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16986_index_spree_taggings_on_tagger_id_and_tagger_type ON public.spree_taggings USING btree (tagger_id, tagger_type);


--
-- Name: idx_16986_spree_taggings_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16986_spree_taggings_idx ON public.spree_taggings USING btree (tag_id, taggable_id, taggable_type, context, tagger_id, tagger_type);


--
-- Name: idx_16986_spree_taggings_idy; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16986_spree_taggings_idy ON public.spree_taggings USING btree (taggable_id, taggable_type, tagger_id, context);


--
-- Name: idx_16993_index_spree_variants_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16993_index_spree_variants_on_deleted_at ON public.spree_variants USING btree (deleted_at);


--
-- Name: idx_16993_index_spree_variants_on_discontinue_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16993_index_spree_variants_on_discontinue_on ON public.spree_variants USING btree (discontinue_on);


--
-- Name: idx_16993_index_spree_variants_on_is_master; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16993_index_spree_variants_on_is_master ON public.spree_variants USING btree (is_master);


--
-- Name: idx_16993_index_spree_variants_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16993_index_spree_variants_on_position ON public.spree_variants USING btree ("position");


--
-- Name: idx_16993_index_spree_variants_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16993_index_spree_variants_on_product_id ON public.spree_variants USING btree (product_id);


--
-- Name: idx_16993_index_spree_variants_on_sku; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16993_index_spree_variants_on_sku ON public.spree_variants USING btree (sku);


--
-- Name: idx_16993_index_spree_variants_on_tax_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16993_index_spree_variants_on_tax_category_id ON public.spree_variants USING btree (tax_category_id);


--
-- Name: idx_16993_index_spree_variants_on_track_inventory; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16993_index_spree_variants_on_track_inventory ON public.spree_variants USING btree (track_inventory);


--
-- Name: idx_17007_index_return_items_on_customer_return_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17007_index_return_items_on_customer_return_id ON public.spree_return_items USING btree (customer_return_id);


--
-- Name: idx_17007_index_spree_return_items_on_exchange_variant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17007_index_spree_return_items_on_exchange_variant_id ON public.spree_return_items USING btree (exchange_variant_id);


--
-- Name: idx_17007_index_spree_return_items_on_inventory_unit_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17007_index_spree_return_items_on_inventory_unit_id ON public.spree_return_items USING btree (inventory_unit_id);


--
-- Name: idx_17007_index_spree_return_items_on_override_reimbursement_ty; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17007_index_spree_return_items_on_override_reimbursement_ty ON public.spree_return_items USING btree (override_reimbursement_type_id);


--
-- Name: idx_17007_index_spree_return_items_on_preferred_reimbursement_t; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17007_index_spree_return_items_on_preferred_reimbursement_t ON public.spree_return_items USING btree (preferred_reimbursement_type_id);


--
-- Name: idx_17007_index_spree_return_items_on_reimbursement_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17007_index_spree_return_items_on_reimbursement_id ON public.spree_return_items USING btree (reimbursement_id);


--
-- Name: idx_17007_index_spree_return_items_on_return_authorization_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17007_index_spree_return_items_on_return_authorization_id ON public.spree_return_items USING btree (return_authorization_id);


--
-- Name: idx_17017_index_spree_trackers_on_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17017_index_spree_trackers_on_active ON public.spree_trackers USING btree (active);


--
-- Name: idx_17025_index_spree_taxons_on_lft; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17025_index_spree_taxons_on_lft ON public.spree_taxons USING btree (lft);


--
-- Name: idx_17025_index_spree_taxons_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17025_index_spree_taxons_on_name ON public.spree_taxons USING btree (name);


--
-- Name: idx_17025_index_spree_taxons_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17025_index_spree_taxons_on_position ON public.spree_taxons USING btree ("position");


--
-- Name: idx_17025_index_spree_taxons_on_rgt; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17025_index_spree_taxons_on_rgt ON public.spree_taxons USING btree (rgt);


--
-- Name: idx_17025_index_taxons_on_parent_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17025_index_taxons_on_parent_id ON public.spree_taxons USING btree (parent_id);


--
-- Name: idx_17025_index_taxons_on_permalink; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17025_index_taxons_on_permalink ON public.spree_taxons USING btree (permalink);


--
-- Name: idx_17025_index_taxons_on_taxonomy_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17025_index_taxons_on_taxonomy_id ON public.spree_taxons USING btree (taxonomy_id);


--
-- Name: idx_17032_index_spree_orders_on_approver_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17032_index_spree_orders_on_approver_id ON public.spree_orders USING btree (approver_id);


--
-- Name: idx_17032_index_spree_orders_on_bill_address_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17032_index_spree_orders_on_bill_address_id ON public.spree_orders USING btree (bill_address_id);


--
-- Name: idx_17032_index_spree_orders_on_canceler_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17032_index_spree_orders_on_canceler_id ON public.spree_orders USING btree (canceler_id);


--
-- Name: idx_17032_index_spree_orders_on_completed_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17032_index_spree_orders_on_completed_at ON public.spree_orders USING btree (completed_at);


--
-- Name: idx_17032_index_spree_orders_on_confirmation_delivered; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17032_index_spree_orders_on_confirmation_delivered ON public.spree_orders USING btree (confirmation_delivered);


--
-- Name: idx_17032_index_spree_orders_on_considered_risky; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17032_index_spree_orders_on_considered_risky ON public.spree_orders USING btree (considered_risky);


--
-- Name: idx_17032_index_spree_orders_on_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17032_index_spree_orders_on_created_by_id ON public.spree_orders USING btree (created_by_id);


--
-- Name: idx_17032_index_spree_orders_on_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_17032_index_spree_orders_on_number ON public.spree_orders USING btree (number);


--
-- Name: idx_17032_index_spree_orders_on_ship_address_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17032_index_spree_orders_on_ship_address_id ON public.spree_orders USING btree (ship_address_id);


--
-- Name: idx_17032_index_spree_orders_on_store_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17032_index_spree_orders_on_store_id ON public.spree_orders USING btree (store_id);


--
-- Name: idx_17032_index_spree_orders_on_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17032_index_spree_orders_on_token ON public.spree_orders USING btree (token);


--
-- Name: idx_17032_index_spree_orders_on_user_id_and_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17032_index_spree_orders_on_user_id_and_created_by_id ON public.spree_orders USING btree (user_id, created_by_id);


--
-- Name: idx_17053_index_spree_prices_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17053_index_spree_prices_on_deleted_at ON public.spree_prices USING btree (deleted_at);


--
-- Name: idx_17053_index_spree_prices_on_variant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17053_index_spree_prices_on_variant_id ON public.spree_prices USING btree (variant_id);


--
-- Name: idx_17053_index_spree_prices_on_variant_id_and_currency; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17053_index_spree_prices_on_variant_id_and_currency ON public.spree_prices USING btree (variant_id, currency);


--
-- Name: idx_17060_index_spree_countries_on_iso; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_17060_index_spree_countries_on_iso ON public.spree_countries USING btree (iso);


--
-- Name: idx_17060_index_spree_countries_on_iso3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_17060_index_spree_countries_on_iso3 ON public.spree_countries USING btree (iso3);


--
-- Name: idx_17060_index_spree_countries_on_iso_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_17060_index_spree_countries_on_iso_name ON public.spree_countries USING btree (iso_name);


--
-- Name: idx_17060_index_spree_countries_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_17060_index_spree_countries_on_name ON public.spree_countries USING btree (name);


--
-- Name: idx_17070_index_spree_oauth_applications_on_uid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_17070_index_spree_oauth_applications_on_uid ON public.spree_oauth_applications USING btree (uid);


--
-- Name: idx_17081_index_spree_oauth_access_grants_on_application_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17081_index_spree_oauth_access_grants_on_application_id ON public.spree_oauth_access_grants USING btree (application_id);


--
-- Name: idx_17081_index_spree_oauth_access_grants_on_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_17081_index_spree_oauth_access_grants_on_token ON public.spree_oauth_access_grants USING btree (token);


--
-- Name: idx_17090_index_spree_oauth_access_tokens_on_application_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17090_index_spree_oauth_access_tokens_on_application_id ON public.spree_oauth_access_tokens USING btree (application_id);


--
-- Name: idx_17090_index_spree_oauth_access_tokens_on_refresh_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_17090_index_spree_oauth_access_tokens_on_refresh_token ON public.spree_oauth_access_tokens USING btree (refresh_token);


--
-- Name: idx_17090_index_spree_oauth_access_tokens_on_resource_owner_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17090_index_spree_oauth_access_tokens_on_resource_owner_id ON public.spree_oauth_access_tokens USING btree (resource_owner_id);


--
-- Name: idx_17090_index_spree_oauth_access_tokens_on_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_17090_index_spree_oauth_access_tokens_on_token ON public.spree_oauth_access_tokens USING btree (token);


--
-- Name: idx_17098_email_idx_unique; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_17098_email_idx_unique ON public.spree_users USING btree (email);


--
-- Name: idx_17098_index_spree_users_on_bill_address_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17098_index_spree_users_on_bill_address_id ON public.spree_users USING btree (bill_address_id);


--
-- Name: idx_17098_index_spree_users_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17098_index_spree_users_on_deleted_at ON public.spree_users USING btree (deleted_at);


--
-- Name: idx_17098_index_spree_users_on_ship_address_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17098_index_spree_users_on_ship_address_id ON public.spree_users USING btree (ship_address_id);


--
-- Name: idx_17098_index_spree_users_on_spree_api_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_17098_index_spree_users_on_spree_api_key ON public.spree_users USING btree (spree_api_key);


--
-- Name: active_storage_attachments active_storage_attachments_blob_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_blob_id_fkey FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: TABLE active_storage_attachments; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.active_storage_attachments TO datadog;


--
-- Name: SEQUENCE active_storage_attachments_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.active_storage_attachments_id_seq TO datadog;


--
-- Name: TABLE active_storage_blobs; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.active_storage_blobs TO datadog;


--
-- Name: SEQUENCE active_storage_blobs_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.active_storage_blobs_id_seq TO datadog;


--
-- Name: TABLE ar_internal_metadata; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.ar_internal_metadata TO datadog;


--
-- Name: TABLE friendly_id_slugs; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.friendly_id_slugs TO datadog;


--
-- Name: SEQUENCE friendly_id_slugs_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.friendly_id_slugs_id_seq TO datadog;


--
-- Name: TABLE schema_migrations; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.schema_migrations TO datadog;


--
-- Name: TABLE spree_addresses; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_addresses TO datadog;


--
-- Name: SEQUENCE spree_addresses_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_addresses_id_seq TO datadog;


--
-- Name: TABLE spree_adjustments; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_adjustments TO datadog;


--
-- Name: TABLE spree_assets; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_assets TO datadog;


--
-- Name: SEQUENCE spree_assets_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_assets_id_seq TO datadog;


--
-- Name: TABLE spree_calculators; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_calculators TO datadog;


--
-- Name: SEQUENCE spree_calculators_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_calculators_id_seq TO datadog;


--
-- Name: TABLE spree_countries; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_countries TO datadog;


--
-- Name: TABLE spree_credit_cards; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_credit_cards TO datadog;


--
-- Name: TABLE spree_customer_returns; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_customer_returns TO datadog;


--
-- Name: SEQUENCE spree_customer_returns_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_customer_returns_id_seq TO datadog;


--
-- Name: TABLE spree_gateways; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_gateways TO datadog;


--
-- Name: SEQUENCE spree_gateways_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_gateways_id_seq TO datadog;


--
-- Name: TABLE spree_inventory_units; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_inventory_units TO datadog;


--
-- Name: TABLE spree_line_items; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_line_items TO datadog;


--
-- Name: TABLE spree_log_entries; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_log_entries TO datadog;


--
-- Name: SEQUENCE spree_log_entries_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_log_entries_id_seq TO datadog;


--
-- Name: TABLE spree_oauth_access_grants; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_oauth_access_grants TO datadog;


--
-- Name: SEQUENCE spree_oauth_access_grants_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_oauth_access_grants_id_seq TO datadog;


--
-- Name: TABLE spree_oauth_access_tokens; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_oauth_access_tokens TO datadog;


--
-- Name: SEQUENCE spree_oauth_access_tokens_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_oauth_access_tokens_id_seq TO datadog;


--
-- Name: TABLE spree_oauth_applications; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_oauth_applications TO datadog;


--
-- Name: SEQUENCE spree_oauth_applications_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_oauth_applications_id_seq TO datadog;


--
-- Name: TABLE spree_option_type_prototypes; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_option_type_prototypes TO datadog;


--
-- Name: SEQUENCE spree_option_type_prototypes_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_option_type_prototypes_id_seq TO datadog;


--
-- Name: TABLE spree_option_types; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_option_types TO datadog;


--
-- Name: SEQUENCE spree_option_types_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_option_types_id_seq TO datadog;


--
-- Name: TABLE spree_option_value_variants; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_option_value_variants TO datadog;


--
-- Name: SEQUENCE spree_option_value_variants_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_option_value_variants_id_seq TO datadog;


--
-- Name: TABLE spree_option_values; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_option_values TO datadog;


--
-- Name: SEQUENCE spree_option_values_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_option_values_id_seq TO datadog;


--
-- Name: TABLE spree_order_promotions; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_order_promotions TO datadog;


--
-- Name: SEQUENCE spree_order_promotions_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_order_promotions_id_seq TO datadog;


--
-- Name: TABLE spree_orders; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_orders TO datadog;


--
-- Name: TABLE spree_payment_capture_events; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_payment_capture_events TO datadog;


--
-- Name: SEQUENCE spree_payment_capture_events_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_payment_capture_events_id_seq TO datadog;


--
-- Name: TABLE spree_payment_methods; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_payment_methods TO datadog;


--
-- Name: TABLE spree_payments; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_payments TO datadog;


--
-- Name: TABLE spree_preferences; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_preferences TO datadog;


--
-- Name: TABLE spree_prices; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_prices TO datadog;


--
-- Name: TABLE spree_product_option_types; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_product_option_types TO datadog;


--
-- Name: SEQUENCE spree_product_option_types_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_product_option_types_id_seq TO datadog;


--
-- Name: TABLE spree_product_promotion_rules; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_product_promotion_rules TO datadog;


--
-- Name: SEQUENCE spree_product_promotion_rules_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_product_promotion_rules_id_seq TO datadog;


--
-- Name: TABLE spree_product_properties; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_product_properties TO datadog;


--
-- Name: SEQUENCE spree_product_properties_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_product_properties_id_seq TO datadog;


--
-- Name: TABLE spree_products; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_products TO datadog;


--
-- Name: TABLE spree_products_taxons; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_products_taxons TO datadog;


--
-- Name: SEQUENCE spree_products_taxons_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_products_taxons_id_seq TO datadog;


--
-- Name: TABLE spree_promotion_action_line_items; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_promotion_action_line_items TO datadog;


--
-- Name: SEQUENCE spree_promotion_action_line_items_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_promotion_action_line_items_id_seq TO datadog;


--
-- Name: TABLE spree_promotion_actions; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_promotion_actions TO datadog;


--
-- Name: TABLE spree_promotion_categories; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_promotion_categories TO datadog;


--
-- Name: SEQUENCE spree_promotion_categories_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_promotion_categories_id_seq TO datadog;


--
-- Name: TABLE spree_promotion_rule_taxons; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_promotion_rule_taxons TO datadog;


--
-- Name: SEQUENCE spree_promotion_rule_taxons_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_promotion_rule_taxons_id_seq TO datadog;


--
-- Name: TABLE spree_promotion_rule_users; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_promotion_rule_users TO datadog;


--
-- Name: SEQUENCE spree_promotion_rule_users_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_promotion_rule_users_id_seq TO datadog;


--
-- Name: TABLE spree_promotion_rules; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_promotion_rules TO datadog;


--
-- Name: TABLE spree_promotions; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_promotions TO datadog;


--
-- Name: TABLE spree_properties; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_properties TO datadog;


--
-- Name: SEQUENCE spree_properties_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_properties_id_seq TO datadog;


--
-- Name: TABLE spree_property_prototypes; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_property_prototypes TO datadog;


--
-- Name: SEQUENCE spree_property_prototypes_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_property_prototypes_id_seq TO datadog;


--
-- Name: TABLE spree_prototype_taxons; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_prototype_taxons TO datadog;


--
-- Name: SEQUENCE spree_prototype_taxons_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_prototype_taxons_id_seq TO datadog;


--
-- Name: TABLE spree_prototypes; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_prototypes TO datadog;


--
-- Name: SEQUENCE spree_prototypes_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_prototypes_id_seq TO datadog;


--
-- Name: TABLE spree_refund_reasons; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_refund_reasons TO datadog;


--
-- Name: SEQUENCE spree_refund_reasons_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_refund_reasons_id_seq TO datadog;


--
-- Name: TABLE spree_refunds; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_refunds TO datadog;


--
-- Name: TABLE spree_reimbursement_credits; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_reimbursement_credits TO datadog;


--
-- Name: SEQUENCE spree_reimbursement_credits_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_reimbursement_credits_id_seq TO datadog;


--
-- Name: TABLE spree_reimbursement_types; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_reimbursement_types TO datadog;


--
-- Name: SEQUENCE spree_reimbursement_types_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_reimbursement_types_id_seq TO datadog;


--
-- Name: TABLE spree_reimbursements; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_reimbursements TO datadog;


--
-- Name: SEQUENCE spree_reimbursements_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_reimbursements_id_seq TO datadog;


--
-- Name: TABLE spree_return_authorization_reasons; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_return_authorization_reasons TO datadog;


--
-- Name: SEQUENCE spree_return_authorization_reasons_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_return_authorization_reasons_id_seq TO datadog;


--
-- Name: TABLE spree_return_authorizations; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_return_authorizations TO datadog;


--
-- Name: TABLE spree_return_items; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_return_items TO datadog;


--
-- Name: TABLE spree_role_users; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_role_users TO datadog;


--
-- Name: SEQUENCE spree_role_users_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_role_users_id_seq TO datadog;


--
-- Name: TABLE spree_roles; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_roles TO datadog;


--
-- Name: SEQUENCE spree_roles_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_roles_id_seq TO datadog;


--
-- Name: TABLE spree_shipments; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_shipments TO datadog;


--
-- Name: TABLE spree_shipping_categories; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_shipping_categories TO datadog;


--
-- Name: SEQUENCE spree_shipping_categories_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_shipping_categories_id_seq TO datadog;


--
-- Name: TABLE spree_shipping_method_categories; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_shipping_method_categories TO datadog;


--
-- Name: SEQUENCE spree_shipping_method_categories_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_shipping_method_categories_id_seq TO datadog;


--
-- Name: TABLE spree_shipping_method_zones; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_shipping_method_zones TO datadog;


--
-- Name: SEQUENCE spree_shipping_method_zones_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_shipping_method_zones_id_seq TO datadog;


--
-- Name: TABLE spree_shipping_methods; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_shipping_methods TO datadog;


--
-- Name: TABLE spree_shipping_rates; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_shipping_rates TO datadog;


--
-- Name: TABLE spree_state_changes; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_state_changes TO datadog;


--
-- Name: SEQUENCE spree_state_changes_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_state_changes_id_seq TO datadog;


--
-- Name: TABLE spree_states; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_states TO datadog;


--
-- Name: SEQUENCE spree_states_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_states_id_seq TO datadog;


--
-- Name: TABLE spree_stock_items; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_stock_items TO datadog;


--
-- Name: TABLE spree_stock_locations; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_stock_locations TO datadog;


--
-- Name: TABLE spree_stock_movements; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_stock_movements TO datadog;


--
-- Name: TABLE spree_stock_transfers; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_stock_transfers TO datadog;


--
-- Name: TABLE spree_store_credit_categories; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_store_credit_categories TO datadog;


--
-- Name: SEQUENCE spree_store_credit_categories_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_store_credit_categories_id_seq TO datadog;


--
-- Name: TABLE spree_store_credit_events; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_store_credit_events TO datadog;


--
-- Name: SEQUENCE spree_store_credit_events_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_store_credit_events_id_seq TO datadog;


--
-- Name: TABLE spree_store_credit_types; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_store_credit_types TO datadog;


--
-- Name: SEQUENCE spree_store_credit_types_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_store_credit_types_id_seq TO datadog;


--
-- Name: TABLE spree_store_credits; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_store_credits TO datadog;


--
-- Name: SEQUENCE spree_store_credits_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_store_credits_id_seq TO datadog;


--
-- Name: TABLE spree_stores; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_stores TO datadog;


--
-- Name: SEQUENCE spree_stores_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_stores_id_seq TO datadog;


--
-- Name: TABLE spree_taggings; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_taggings TO datadog;


--
-- Name: SEQUENCE spree_taggings_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_taggings_id_seq TO datadog;


--
-- Name: TABLE spree_tags; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_tags TO datadog;


--
-- Name: SEQUENCE spree_tags_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_tags_id_seq TO datadog;


--
-- Name: TABLE spree_tax_categories; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_tax_categories TO datadog;


--
-- Name: SEQUENCE spree_tax_categories_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_tax_categories_id_seq TO datadog;


--
-- Name: TABLE spree_tax_rates; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_tax_rates TO datadog;


--
-- Name: SEQUENCE spree_tax_rates_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_tax_rates_id_seq TO datadog;


--
-- Name: TABLE spree_taxonomies; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_taxonomies TO datadog;


--
-- Name: SEQUENCE spree_taxonomies_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_taxonomies_id_seq TO datadog;


--
-- Name: TABLE spree_taxons; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_taxons TO datadog;


--
-- Name: TABLE spree_trackers; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_trackers TO datadog;


--
-- Name: TABLE spree_users; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_users TO datadog;


--
-- Name: TABLE spree_variants; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_variants TO datadog;


--
-- Name: TABLE spree_zone_members; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_zone_members TO datadog;


--
-- Name: SEQUENCE spree_zone_members_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_zone_members_id_seq TO datadog;


--
-- Name: TABLE spree_zones; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spree_zones TO datadog;


--
-- Name: SEQUENCE spree_zones_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.spree_zones_id_seq TO datadog;


--
-- PostgreSQL database dump complete
--
