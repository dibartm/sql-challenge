PGDMP         (                {           sql_challenge    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            !           1262    16592    sql_challenge    DATABASE     o   CREATE DATABASE sql_challenge WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE sql_challenge;
                postgres    false            �            1259    16612    departments    TABLE     \   CREATE TABLE public.departments (
    dept_name text NOT NULL,
    dept_no text NOT NULL
);
    DROP TABLE public.departments;
       public         heap    postgres    false            �            1259    16607    dept_emp    TABLE     Y   CREATE TABLE public.dept_emp (
    emp_no integer NOT NULL,
    dept_no text NOT NULL
);
    DROP TABLE public.dept_emp;
       public         heap    postgres    false            �            1259    16619    dept_manager    TABLE     ]   CREATE TABLE public.dept_manager (
    emp_no integer NOT NULL,
    dept_no text NOT NULL
);
     DROP TABLE public.dept_manager;
       public         heap    postgres    false            �            1259    16600 	   employees    TABLE     �   CREATE TABLE public.employees (
    emp_no integer NOT NULL,
    birth_date date NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    sex text NOT NULL,
    hire_date date NOT NULL,
    emp_title_id text NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    16624    salaries    TABLE     [   CREATE TABLE public.salaries (
    emp_no integer NOT NULL,
    salary integer NOT NULL
);
    DROP TABLE public.salaries;
       public         heap    postgres    false            �            1259    16593    titles    TABLE     T   CREATE TABLE public.titles (
    title text NOT NULL,
    title_id text NOT NULL
);
    DROP TABLE public.titles;
       public         heap    postgres    false            �           2606    16655    departments departments_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_no);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public            postgres    false    217            �           2606    16659    dept_emp dept_emp_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.dept_emp
    ADD CONSTRAINT dept_emp_pkey PRIMARY KEY (dept_no, emp_no);
 @   ALTER TABLE ONLY public.dept_emp DROP CONSTRAINT dept_emp_pkey;
       public            postgres    false    216    216            �           2606    16623    dept_manager dept_manager_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_pkey PRIMARY KEY (emp_no);
 H   ALTER TABLE ONLY public.dept_manager DROP CONSTRAINT dept_manager_pkey;
       public            postgres    false    218            �           2606    16604    employees employees_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_no);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    215            �           2606    16628    salaries salaries_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT salaries_pkey PRIMARY KEY (emp_no);
 @   ALTER TABLE ONLY public.salaries DROP CONSTRAINT salaries_pkey;
       public            postgres    false    219            �           2606    16663    titles titles_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (title_id);
 <   ALTER TABLE ONLY public.titles DROP CONSTRAINT titles_pkey;
       public            postgres    false    214           