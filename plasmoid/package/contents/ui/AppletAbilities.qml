/*
*  Copyright 2021 Michail Vourlakos <mvourlakos@gmail.com>
*
*  This file is part of Latte-Dock
*
*  Latte-Dock is free software; you can redistribute it and/or
*  modify it under the terms of the GNU General Public License as
*  published by the Free Software Foundation; either version 2 of
*  the License, or (at your option) any later version.
*
*  Latte-Dock is distributed in the hope that it will be useful,
*  but WITHOUT ANY WARRANTY; without even the implied warranty of
*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*  GNU General Public License for more details.
*
*  You should have received a copy of the GNU General Public License
*  along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

import QtQuick 2.7

import org.kde.plasma.plasmoid 2.0

import org.kde.latte.core 0.2 as LatteCore
import org.kde.latte.abilities.client 0.1 as ClientAbility

import "abilities" as Ability

Item {
    id: _abilityContainer

    property Item bridge: null
    property Item layout: null
    property QtObject tasksModel: null

    readonly property alias animations: _animations
    readonly property alias debug: _debug
    readonly property alias indexer: _indexer
    readonly property alias launchers: _launchers
    readonly property alias metrics: _metrics
    readonly property alias parabolic: _parabolic
    readonly property alias shortcuts: _shortcuts
    readonly property alias requires: _requires
    readonly property alias userRequests: _userRequests

    Ability.Animations {
        id: _animations
        bridge: _abilityContainer.bridge
    }

    ClientAbility.Debug {
        id: _debug
        bridge: _abilityContainer.bridge
    }

    Ability.Indexer {
        id: _indexer
        bridge: _abilityContainer.bridge
        layout: _abilityContainer.layout
    }

    Ability.Launchers {
        id: _launchers
        bridge: _abilityContainer.bridge
        layout: _abilityContainer.layout
        tasksModel: _abilityContainer.tasksModel
    }

    Ability.Metrics {
        id: _metrics
        bridge: _abilityContainer.bridge
    }

    Ability.ParabolicEffect {
        id: _parabolic
        bridge: _abilityContainer.bridge
        layout: _abilityContainer.layout
    }

    Ability.PositionShortcuts {
        id: _shortcuts
        bridge: _abilityContainer.bridge
        indexer: _indexer
    }

    ClientAbility.Requirements{
        id: _requires
        bridge: _abilityContainer.bridge
    }

    Ability.UserRequests {
        id: _userRequests
        bridge: _abilityContainer.bridge
    }
}