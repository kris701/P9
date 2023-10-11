﻿using PDDLSharp.Models;
using PDDLSharp.Models.PDDL.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MetaActionGenerator
{
    public class RemovePreconditionParameters : ICandidateGenerator
    {
        public PDDLDecl Declaration { get; }

        public RemovePreconditionParameters(PDDLDecl declaration)
        {
            Declaration = declaration;
        }

        public List<ActionDecl> Generate(List<ActionDecl> actions)
        {
            List<ActionDecl> metaActions = new List<ActionDecl>();

            return metaActions;
        }
    }
}