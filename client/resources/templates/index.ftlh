[#ftl]

[#import "inc/page.ftlh" as p /]
[#import "inc/modal.ftlh" as m /]

[@p.page 'Vanilla FE Example'; t]
    [#if t='body']
        <div>
            <h1>Freemarker, Spring, esbuild, modals</h1>
            <p>Click the buttons below to open the example modals</p>

            <button onclick="modal.openModal('modal-1')">Open Modal</button>

            <button hx-get="/modal"
                    hx-target="#${m.remote_id}"
                    hx-swap="outerHTML">
                Open Remote Modal
            </button>

        </div>

        [@m.modal "modal-1" "A modal popup"]
            <p>Close with the button below.</p>
        [/@m.modal]

        [@m.modalRemotePlaceholder /]
    [/#if]
[/@p.page]
