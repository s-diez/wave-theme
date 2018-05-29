[{block name="dd_widget_breadcrumb"}]
    [{strip}]
        [{block name="dd_widget_breadcrumb_list_inner"}]
        <div class="breadcrumb-wrapper">
            [{assign var='rsslinks' value=$oView->getRssLinks()}]
            <div class="h1">
                [{if $oView->getClassName()=='details'}]
                    [{$oDetailsProduct->oxarticles__oxtitle}]
                [{else}]
                    [{foreach from=$oView->getBreadCrumb() item="sCrum" name="breadcrumb"}]
                        [{if $smarty.foreach.breadcrumb.last}]
                            [{$sCrum.title}]
                        [{/if}]
                    [{/foreach}]
                [{/if}]
            </div>
            <ol id="breadcrumb" class="breadcrumb">
                [{block name="dd_widget_breadcrumb_list"}]
                [{foreach from=$oView->getBreadCrumb() item="sCrum" name="breadcrumb"}]
                <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="breadcrumb-item[{if $smarty.foreach.breadcrumb.last}] active[{/if}]">
                    <a href="[{if $sCrum.link}][{$sCrum.link}][{else}]#[{/if}]" class="breadcrumb-link" title="[{$sCrum.title|escape:'html'}]" itemprop="url">
                        <span itemprop="title">[{$sCrum.title}]</span>
                    </a>
                </li>
                [{/foreach}]
                [{/block}]
            </ol>
        </div>
        [{/block}]
    [{/strip}]
[{/block}]
