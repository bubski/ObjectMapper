import XCTest
@testable import ObjectMapperTests

XCTMain([
	testCase(ClassClusterTests.allTests),
	testCase(CustomTransformTests.allTests),
	testCase(DataTransformTests.allTests),
	testCase(DictionaryTransformTests.allTests),
	testCase(GenericObjectsTests.allTests),
	testCase(IgnoreNilTests.allTests),
	testCase(ImmutableObjectTests.allTests),
	testCase(MapContextTests.allTests),
	testCase(MappableExtensionsTests.allTests),
	testCase(MappableTypesWithTransformsTests.allTests),
	testCase(NSDecimalNumberTransformTests.allTests),
	testCase(NestedArrayTests.allTests),
	testCase(NestedKeysTests.allTests),
	testCase(NullableKeysFromJSONTests.allTests),
	testCase(ObjectMapperTests.allTests),
	testCase(PerformanceTests.allTests),
	testCase(ToObjectTests.allTests),
	testCase(URLTransformTests.allTests),
	testCase(CastingTests.allTests),
	])
