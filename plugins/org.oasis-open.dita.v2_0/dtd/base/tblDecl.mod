<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    XML EXCHANGE TABLE MODEL DECLARATION MODULE       -->
<!--  VERSION:   2.0                                               -->
<!--  DATE:      [[[Release date]]]                                     -->
<!--                                                               -->
<!-- ============================================================= -->
<!--             (C) Copyright OASIS Open 2005, 2009.              -->
<!--             (C) Copyright IBM Corporation 2001, 2004.         -->
<!--             All Rights Reserved.                              -->
<!--                                                               -->
<!--  UPDATES:                                                     -->
<!-- ============================================================= -->
<!--  Delivered as file "tblDecl.mod"                              -->
<!-- ============================================================= -->
<!-- XML EXCHANGE TABLE MODEL DECLARATION MODULE                   -->
<!-- OASIS DITA 1.0 notes:                                         -->
<!--      The Exchange Table Model replaces the original CALS-based model -->
<!--      used in development versions of the DITA definition.     -->
<!--      This set of declarations defines the XML version of the Exchange -->
<!--      Table Model as adapted for OASIS DITA version 1.0.       -->
<!--      The base for the DITA version of the Exchange Table Model is -->
<!--      defined at http://www.oasis-open.org/specs/tm9901.htm .  -->
<!--      The DITA version specifically extends this model with these DITA- -->
<!--      specific content and attribute adaptations to the DITA processing -->
<!--      requirements:                                            -->
<!-- STRUCTURE:                                                    -->
<!-- Introduce the DITA-unique <desc> element (optional after <title>); this element -->
<!-- enables more consistent presentation of both figures and tables. -->
<!-- ATTRIBUTES:                                                   -->
<!-- For frame, align, and valign attributes on any element:       -->
<!--   Add the enumerated value -dita-use-conref-target for DITA 1.1.   -->
<!-- For the <table> element, add:                                 -->
<!--   %univ-atts; which consists of:                              -->
<!--     %select-atts; [for selection, conditional processing]     -->
<!--     %id-atts; [for conref and linking]                        -->
<!--     %localization-atts (@translate + @xml:lang) [for NLS processing support] -->
<!--     %global-atts (@xtrf + @xtrc) [for tracing and messaging support in processors] -->
<!--     @class [for specialization support]                       -->
<!--   @outputclass [for role designation (ie, styles, future migrations)] -->
<!--   @rowheader [for accessibility support in processing]        -->
<!--   %display-atts; which consists of:                           -->
<!--     @scale [for presentational equivalence with other scaled exhibits: fig, pre, lines, simpletable] -->
<!--     @frame (already part of table)                            -->
<!--     @pgwide (already part of table, same intent as original @expanse) -->
<!-- For <tgroup>, <thead>, <tbody>, and <row>, add:               -->
<!--   %univ-atts;                                                 -->
<!--   %global-atts                                                -->
<!--   @class                                                      -->
<!--   @outputclass [for role designation (ie, styles, future migrations)] -->
<!-- For <entry>, add:                                             -->
<!--   %id-atts;                                                   -->
<!--   %global-atts                                                -->
<!--   @class                                                      -->
<!--   @outputclass [for role designation (ie, styles, future migrations)] -->
<!--   @rev [for indication of revised content for flag-based processing] -->
<!--                                                               -->
<!ENTITY % table       "table"                                       >
<!ENTITY % tgroup      "tgroup"                                      >
<!ENTITY % colspec     "colspec"                                     >
<!ENTITY % thead       "thead"                                       >
<!ENTITY % tbody       "tbody"                                       >
<!ENTITY % row         "row"                                         >
<!ENTITY % entry       "entry"                                       >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % yesorno
              "NMTOKEN"
>
<!ENTITY % titles
              "(%title;)?"
>
<!ENTITY % paracon
              "%tblcell.cnt;"
>
<!ENTITY % tbl.table.name
              "table"
>
<!ENTITY % tbl.table-titles.mdl
              "((%title;)?,
                (%desc;)?)"
>
<!ENTITY % tbl.table-main.mdl
              "(%tgroup;)+"
>
<!ENTITY % tbl.table.mdl
              "((%tbl.table-titles.mdl;),
                (%tbl.table-main.mdl;))"
>
<!ENTITY % tbl.table.att
              "pgwide
                          %yesorno;
                                    #IMPLIED"
>
<!ENTITY % bodyatt
              ""
>
<!ENTITY % tbl.tgroup.mdl
              "((%colspec;)*,
                (%thead;)?,
                (%tbody;))"
>
<!ENTITY % tbl.tgroup.att
              ""
>
<!ENTITY % tbl.thead.att
              ""
>
<!ENTITY % tbl.tbody.att
              ""
>
<!ENTITY % tbl.colspec.att
              "base
                          CDATA
                                    #IMPLIED
               %base-attribute-extensions;"
>
<!ENTITY % tbl.row.mdl
              "(%entry;)+"
>
<!ENTITY % tbl.row.att
              ""
>
<!ENTITY % tbl.entry.mdl
              "(%paracon;)*"
>
<!ENTITY % tbl.entry.att
              "base
                          CDATA
                                    #IMPLIED
               %base-attribute-extensions;"
>
<!ENTITY % dita.table.attributes
              "orient
                          (port |
                           land |
                           -dita-use-conref-target)
                                    #IMPLIED
               rowheader
                          (firstcol |
                           headers |
                           norowheader |
                           -dita-use-conref-target)
                                    #IMPLIED
               %table-scale-att;
               %univ-atts;"
>
<!ENTITY % dita.tgroup.attributes
              "%univ-atts;"
>
<!ENTITY % dita.thead.attributes
              "%univ-atts;"
>
<!ENTITY % dita.tbody.attributes
              "%univ-atts;"
>
<!ENTITY % dita.row.attributes
              "%univ-atts;"
>
<!ENTITY % dita.entry.attributes
              "%id-atts;
               %localization-atts;
               rotate
                          %yesorno;
                                    #IMPLIED
               rev
                          CDATA
                                    #IMPLIED
               outputclass
                          CDATA
                                    #IMPLIED
               scope
                          (row |
                           col |
                           rowgroup |
                           colgroup |
                           -dita-use-conref-target)
                                    #IMPLIED
               headers
                          NMTOKENS
                                    #IMPLIED"
>
<!ENTITY % dita.colspec.attributes
              "%id-atts;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!--                    LONG NAME: Table                           -->
<!ENTITY % table.content
                       "(%tbl.table.mdl;)"
>
<!ENTITY % table.attributes
              "frame
                          (top |
                           bottom |
                           topbot |
                           all |
                           sides |
                           none |
                           -dita-use-conref-target)
                                    #IMPLIED
               colsep
                          %yesorno;
                                    #IMPLIED
               rowsep
                          %yesorno;
                                    #IMPLIED
               %tbl.table.att;
               %bodyatt;
               %dita.table.attributes;"
>
<!ELEMENT  table %table.content;>
<!ATTLIST  table %table.attributes;>


<!--                    LONG NAME: Table Group                     -->
<!ENTITY % tgroup.content
                       "(%tbl.tgroup.mdl;)"
>
<!ENTITY % tgroup.attributes
              "cols
                          NMTOKEN
                                    #REQUIRED
               colsep
                          %yesorno;
                                    #IMPLIED
               rowsep
                          %yesorno;
                                    #IMPLIED
               align
                          (left |
                           right |
                           center |
                           justify |
                           char |
                           -dita-use-conref-target)
                                    #IMPLIED
               %tbl.tgroup.att;
               %dita.tgroup.attributes;"
>
<!ELEMENT  tgroup %tgroup.content;>
<!ATTLIST  tgroup %tgroup.attributes;>


<!--                    LONG NAME: Column Specification            -->
<!ENTITY % colspec.content
                       "EMPTY"
>
<!ENTITY % colspec.attributes
              "colnum
                          NMTOKEN
                                    #IMPLIED
               colname
                          NMTOKEN
                                    #IMPLIED
               colwidth
                          CDATA
                                    #IMPLIED
               colsep
                          %yesorno;
                                    #IMPLIED
               rowsep
                          %yesorno;
                                    #IMPLIED
               align
                          (left |
                           right |
                           center |
                           justify |
                           char |
                           -dita-use-conref-target)
                                    #IMPLIED
               char
                          CDATA
                                    #IMPLIED
               charoff
                          NMTOKEN
                                    #IMPLIED
               rowheader
                          (firstcol |
                           headers |
                           norowheader |
                           -dita-use-conref-target)
                                    #IMPLIED
               %tbl.colspec.att;
               %dita.colspec.attributes;"
>
<!ELEMENT  colspec %colspec.content;>
<!ATTLIST  colspec %colspec.attributes;>


<!--                    LONG NAME: Table Header                    -->
<!ENTITY % thead.content
                       "(%row;)+"
>
<!ENTITY % thead.attributes
              "valign
                          (top |
                           middle |
                           bottom |
                           -dita-use-conref-target)
                                    #IMPLIED
               %tbl.thead.att;
               %dita.thead.attributes;"
>
<!ELEMENT  thead %thead.content;>
<!ATTLIST  thead %thead.attributes;>


<!--                    LONG NAME: Table Body                      -->
<!ENTITY % tbody.content
                       "(%row;)+"
>
<!ENTITY % tbody.attributes
              "valign
                          (top |
                           middle |
                           bottom |
                           -dita-use-conref-target)
                                    #IMPLIED
               %tbl.tbody.att;
               %dita.tbody.attributes;"
>
<!ELEMENT  tbody %tbody.content;>
<!ATTLIST  tbody %tbody.attributes;>


<!--                    LONG NAME: Table Row                       -->
<!ENTITY % row.content
                       "(%tbl.row.mdl;)"
>
<!ENTITY % row.attributes
              "rowsep
                          %yesorno;
                                    #IMPLIED
               valign
                          (top |
                           middle |
                           bottom |
                           -dita-use-conref-target)
                                    #IMPLIED
               %tbl.row.att;
               %dita.row.attributes;"
>
<!ELEMENT  row %row.content;>
<!ATTLIST  row %row.attributes;>


<!--                    LONG NAME: Table Row Entry                 -->
<!ENTITY % entry.content
                       "%tbl.entry.mdl;"
>
<!ENTITY % entry.attributes
              "colname
                          NMTOKEN
                                    #IMPLIED
               namest
                          NMTOKEN
                                    #IMPLIED
               nameend
                          NMTOKEN
                                    #IMPLIED
               morerows
                          NMTOKEN
                                    #IMPLIED
               colsep
                          %yesorno;
                                    #IMPLIED
               rowsep
                          %yesorno;
                                    #IMPLIED
               align
                          (left |
                           right |
                           center |
                           justify |
                           char |
                           -dita-use-conref-target)
                                    #IMPLIED
               char
                          CDATA
                                    #IMPLIED
               charoff
                          NMTOKEN
                                    #IMPLIED
               valign
                          (top |
                           middle |
                           bottom |
                           -dita-use-conref-target)
                                    #IMPLIED
               %tbl.entry.att;
               %dita.entry.attributes;"
>
<!ELEMENT  entry %entry.content;>
<!ATTLIST  entry %entry.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  table          class CDATA "- topic/table "      >
<!ATTLIST  tgroup         class CDATA "- topic/tgroup "     >
<!ATTLIST  colspec        class CDATA "- topic/colspec "    >
<!ATTLIST  thead          class CDATA "- topic/thead "      >
<!ATTLIST  tbody          class CDATA "- topic/tbody "      >
<!ATTLIST  row            class CDATA "- topic/row "        >
<!ATTLIST  entry          class CDATA "- topic/entry "      >

<!-- ================== End of XML EXCHANGE TABLE MODEL DECLARATION ==================== -->
 