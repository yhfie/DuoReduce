/*
 * Copyright (C) 2018-2024 University of Waterloo.
 *
 * This file is part of Perses.
 *
 * Perses is free software; you can redistribute it and/or modify it under the
 * terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 3, or (at your option) any later version.
 *
 * Perses is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * Perses; see the file LICENSE.  If not see <http://www.gnu.org/licenses/>.
 */
package org.perses.reduction.reducer

import com.google.common.truth.Truth.assertThat
import org.junit.Test
import org.junit.runner.RunWith
import org.junit.runners.JUnit4
import org.perses.reduction.AbstractPersesReducerTest
import org.perses.spartree.AbstractSparTreeNode
import org.perses.spartree.SparTree

@RunWith(JUnit4::class)
class PersesNodeReducerTest : AbstractPersesReducerTest() {
  @Test
  fun testCreatePartition() {
    val tree: SparTree = treeT1
    val node: AbstractSparTreeNode = tree.getNodeByTreeScanForId(2)!!
    assertThat(node.ruleName).isEqualTo("kleene_plus__externalDeclaration")
  }
}
