(* FreeSpec
 * Copyright (C) 2018–2020 ANSSI
 *
 * Contributors:
 * 2020 Thomas Letan <thomas.letan@ssi.gouv.fr>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 *)

let vault : Obj.t Store.t = Store.create ()

let insert v = Store.add vault (Obj.repr v)
let remove = Store.remove vault
let replace k v = Store.replace vault k (Obj.repr v)
let find k = Obj.obj (Store.find vault k)
