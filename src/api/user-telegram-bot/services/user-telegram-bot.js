'use strict';

/**
 * user-telegram-bot service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::user-telegram-bot.user-telegram-bot');
