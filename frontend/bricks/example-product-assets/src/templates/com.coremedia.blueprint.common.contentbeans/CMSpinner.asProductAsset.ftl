<#-- @ftlvariable name="self" type="com.coremedia.blueprint.common.contentbeans.CMSpinner" -->

<#assign modifier=cm.localParameters().modifier!cm.UNDEFINED />
<#assign renderAsThumbnail=cm.localParameters().renderAsThumbnail!false />

<div class="cm-product-asset<#if modifier?has_content> cm-product-asset--${modifier}</#if>">
  <@cm.include self=renderAsThumbnail?then(self.sequence?first!cm.UNDEFINED, self)
               view="media"
               params={
                 "classBox": "cm-product-asset__media-box",
                 "classMedia": "cm-product-asset__media"
               } />
  <#if renderAsThumbnail>
    <div class="cm-product-asset__icon cm-spinner-button"></div>
  </#if>
</div>
