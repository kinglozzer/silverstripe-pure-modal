<% require css('lekoala/silverstripe-pure-modal: client/pure-modal.css') %>

<label for="$ModalID" class="btn btn-primary" $AttributesHTML>
    $Title
</label>
<div class="pure-modal from-top">
    <input id="$ModalID" class="checkbox no-change-track" type="checkbox">
    <div class="pure-modal-overlay">
        <label for="$ModalID" class="pure-modal-close"></label>
        <div class="pure-modal-wrap">
            <label for="$ModalID" class="close">&#10006;</label>
            <% if $Iframe && $IframeTop %>
            <iframe id="$IframeID" src="$Iframe" width="100%" loading="lazy" style="max-height:400px" frameBorder="0" scrolling="auto"></iframe>
            <% end_if %>
            $Content.RAW
            <%-- Iframe if set and not top --%>
            <% if $Iframe && not $IframeTop %>
            <iframe id="$IframeID"  src="$Iframe" width="100%" loading="lazy" style="max-height:400px" frameBorder="0" scrolling="auto"></iframe>
            <% end_if %>
        </div>
    </div>
</div>
