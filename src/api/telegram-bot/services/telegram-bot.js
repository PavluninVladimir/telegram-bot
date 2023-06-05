'use strict';

/**
 * telegram-bot service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::telegram-bot.telegram-bot');
