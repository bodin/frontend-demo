[#ftl]

[#assign remote_id ="remote-id" /]

[#macro modal id title=""]
    <div id="${id}" class="modal">
        <div class="modal-body">
            <h1>${title}</h1>
            [#nested/]
            <button onclick="modal.closeModal()">Close</button>
        </div>
    </div>
[/#macro]

[#macro modalRemote title=""]
    <div id="${remote_id}" class="modal" hx-on::after-settle="modal.openModal('${remote_id}')">
        <div class="modal-body">
            <h1>${title}</h1>
            [#nested/]
            <button onclick="modal.closeModal()">Close</button>
        </div>
    </div>
[/#macro]

[#macro modalRemotePlaceholder]
    <div id="${remote_id}" />
[/#macro]

