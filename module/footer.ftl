<footer id="footer" class="footer">
    <div class="footer-container">
        <p><@global.footer /></p>
        <#if settings.footer??>
            <a href="https://beian.miit.gov.cn/" target="_blank">
                ${settings.footer}
            </a>
        </#if>
    </div>
</footer>