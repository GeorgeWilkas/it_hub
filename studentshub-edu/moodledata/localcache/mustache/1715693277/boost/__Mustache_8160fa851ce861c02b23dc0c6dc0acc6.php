<?php

class __Mustache_8160fa851ce861c02b23dc0c6dc0acc6 extends Mustache_Template
{
    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $buffer = '';

        $buffer .= $indent . '<div id="starred-courses-view-';
        $value = $this->resolveValue($context->find('uniqid'), $context);
        $buffer .= ($value === null ? '' : call_user_func($this->mustache->getEscape(), $value));
        $buffer .= '"
';
        $buffer .= $indent . '     data-region="starred-courses-view"
';
        $buffer .= $indent . '     data-nocoursesimg="';
        $value = $this->resolveValue($context->find('nocoursesimg'), $context);
        $buffer .= ($value === null ? '' : call_user_func($this->mustache->getEscape(), $value));
        $buffer .= '">
';
        $buffer .= $indent . '    <div data-region="starred-courses-view-content">
';
        $buffer .= $indent . '        <div data-region="starred-courses-loading-placeholder">
';
        $buffer .= $indent . '            <div class="card-grid mx-0 row row-cols-1 row-cols-sm-2 row-cols-md-3 flex-nowrap overflow-hidden" style="height: 11.1rem">
';
        $buffer .= $indent . '                <div class="col p-0">';
        if ($partial = $this->mustache->loadPartial('core_course/placeholder-course')) {
            $buffer .= $partial->renderInternal($context);
        }
        $buffer .= '</div>
';
        $buffer .= $indent . '                <div class="col p-0">';
        if ($partial = $this->mustache->loadPartial('core_course/placeholder-course')) {
            $buffer .= $partial->renderInternal($context);
        }
        $buffer .= '</div>
';
        $buffer .= $indent . '                <div class="col p-0">';
        if ($partial = $this->mustache->loadPartial('core_course/placeholder-course')) {
            $buffer .= $partial->renderInternal($context);
        }
        $buffer .= '</div>
';
        $buffer .= $indent . '            </div>
';
        $buffer .= $indent . '        </div>
';
        $buffer .= $indent . '    </div>
';
        $buffer .= $indent . '</div>
';

        return $buffer;
    }
}
