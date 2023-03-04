import Rails from '@rails/ujs';
import Turbolinks from 'turbolinks';
import * as ActiveStorage from '@rails/activestorage';
import 'channels';
import 'bootstrap';
import '../stylesheets/application.scss';
require('jquery');
import './welfares/posts';

// * フラッシュメッセージを4秒後に消す
$(function() {
    setTimeout("$('.alert').fadeOut('slow')", 2000);
});

Rails.start();
Turbolinks.start();
ActiveStorage.start();