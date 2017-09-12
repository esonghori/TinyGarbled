/*
 This file is part of TinyGarble.

 TinyGarble is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 TinyGarble is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with TinyGarble.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "bmr/v_2_bmr.h"

#include <boost/program_options.hpp>
#include <boost/format.hpp>
#include <iostream>
#include <fstream>
#include "bmr/parse_netlist.h"
#include "bmr/bmr.h"
#include "bmr/scheduling.h"
#include "util/log.h"

namespace po = boost::program_options;
using std::ofstream;
using std::endl;

int main(int argc, char** argv) {
  LogInitial(argc, argv);

  string input_netlist_file, brist_input_netlist_file;
  string output_bmr_file;

  boost::format fmter(
      "Verilog to BMR, TinyGarble version %1%.%2%.%3%.\nAllowed options");
  fmter % TinyGarble_VERSION_MAJOR % TinyGarble_VERSION_MINOR
      % TinyGarble_VERSION_PATCH;
  po::options_description desc(fmter.str());
  desc.add_options()  //
  ("help,h", "produce help message.")  //
  ("netlist,i", po::value<string>(&input_netlist_file),
   "Input netlist (verilog .v) file address.")  //
   ("bmr,b", po::value<string>(&output_bmr_file),
   "Output bmr circuit file address.");

  po::variables_map vm;
  try {
    po::parsed_options parsed = po::command_line_parser(argc, argv).options(
        desc).allow_unregistered().run();
    po::store(parsed, vm);
    if (vm.count("help")) {
      std::cout << desc << endl;
      return SUCCESS;
    }
    po::notify(vm);
  } catch (po::error& e) {
    LOG(ERROR) << "ERROR: " << e.what() << endl << endl;
    std::cout << desc << endl;
    return FAILURE;
  }

  if (output_bmr_file.empty()) {
    std::cerr << "ERROR: output bmr (-b) flag must be indicated." << endl;
    std::cout << desc << endl;
    return FAILURE;
  }

  string out_mapping_filename = output_bmr_file + ".map";

  if (!input_netlist_file.empty()){
	LOG(INFO) << "V2BMR " << input_netlist_file << " to " << output_bmr_file << endl;
	if (Verilog2BMR(input_netlist_file, out_mapping_filename,
					output_bmr_file) == FAILURE) {
	  LOG(ERROR) << "Verilog to BMR failed." << endl;
	  return FAILURE;
	}
  }
  else {
    std::cerr << "ERROR: input netlist (-i) flag must be indicated." << endl;
    std::cout << desc << endl;
    return FAILURE;
  }

  LogFinish();
  return SUCCESS;
}