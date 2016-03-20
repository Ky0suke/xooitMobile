<div class="container-fluid">
    <div class="panel panel-default">
        <div class="panel-heading"><b>Foire Aux Questions (F.A.Q)</b></div>
        <div class="panel-body">
            <ul id="faq" class="list-unstyled">
            <!-- BEGIN faq_block_link -->
            <li>
                <a href="#" class="faq-categorie">{faq_block_link.BLOCK_TITLE}</a>
                <ul class="faq-links" style="display: none;">
                    <!-- BEGIN faq_row_link -->
                    <li><a href="#" class="goto-answer" data-id="{faq_block_link.faq_row_link.U_FAQ_LINK}">{faq_block_link.faq_row_link.FAQ_LINK}</a></li>
                    <!-- END faq_row_link -->
                </ul>
            </li>
            <!-- END faq_block_link -->
            </ul>
        </div>
    </div>

    <!-- BEGIN faq_block -->
         <!-- BEGIN faq_row -->
        <div class="panel panel-info hidden faq-answer" id="question-{faq_block.faq_row.U_FAQ_ID}">
            <div class="panel-heading">{faq_block.faq_row.FAQ_QUESTION}</div>
            <div class="panel-body">
                {faq_block.faq_row.FAQ_ANSWER}
            </div>
        </div>
        <!-- END faq_row -->
    <!-- END faq_block -->
</div>